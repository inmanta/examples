# Configure the network with the orchestrator

## Prerequisites

To follow these instructions, you need to:
 - complete the lab setup (either [here (opensource)](lab/readme.md) or [here (licensed version)](lab-iso/README.md))
 - [have a basic understanding of how to use the orchestrator](1-basic-deployment.md) 
 - have a basic understanding of python 


## Intent-based orchestration 

Inmanta is an intent-based orchestrator. What does this mean? 

Intent-based (previously referred to as desired state) describes a model where the user specifies the target outcome rather than the explicit actions required to achieve it.

For example, in automotive climate control, older systems allow direct control of fan speed. To reach a specific temperature, the user must manually adjust the fan speed as conditions change. Because the system is unaware of the desired temperature, it cannot automatically maintain it.

In an intent-based climate control system, the user specifies a target temperature. The system interprets this as the desired state and automatically adjusts heating, cooling, and airflow to maintain that target without further user intervention.

An intent based orchestrator will never say: put the config on the router. Instead, it specifies, the config has to be on the router. To a human, this is the same thing. To a computer however, the difference is huge: the end result is explicit. At any time, the orchestrator can check if the end-result still holds. This is the basis for the self-healing and dryrun capabilities of the orchestrator. 

> :mortar_board: For the more theoretically inclined, another fundamental advantage of desired state is that enforcing desired state is always idempotent. This means that at-least-once semantics are equivalent to exactly-once semantics. This in turn makes failure handling and recovery much simpler and more uniform (in case of doubt, try again). This in turn allows desired states to be composed, without getting overwhelmed by the complexity of failure handling. 

## The inmanta modeling language 

The inmanta modeling language is a programming language specific for intent.
This implies some special features:
- every variable can only ever have one value. The value can not change once it has been assigned. `a = a + 1` is always wrong.
- the order of instructions doesn't matter. The following is a valid program that will print `hello world`:

    ```inmanta
    std::print(a)
    a = “hello world”
    ```

    > :mortar_board: For the theoretically-inclined, the inmanta modeling language is a data flow language: instructions are not executed top to bottom, but when their inputs are known. This offers an important benefit to most normal programming languages. Orchestration models are often overdetermined structures where it is not up-front clear what the inputs are. Overdetermined in the sense that, if you know any two of `network ip range`, `position in the network` and `ip address`, you can derive the third one. It is not up-front clear what is input in the sense that if I create a VM on vcenter, the ip is input, if I create it on AWS, it can be either input or output, on hetzner it is output. One job of the programmer is to order all instruction such that all outputs are derived from the inputs. This means they have to find a path through this overdetermined graph to every output and make a linear sequence of instructions out of it. Every time the code changes (an output becomes an input, a derivation rule changes, ... ) this re-ordering has to be done again. And it tends to ripple through the code, as the path is a global property of the graph. Cut one wrong link and every other edge re-orients, requiring a full re-write. The inmanta modeling language performs this path finding itself, preventing this ripple.  

    > :mortar_board: For the theoretically-inclined, the inmanta model language also guarantees that any conditional statement produces the same outcome as it would at the end of execution. This prevents the problem where we evaluate a condition (e.g. if the connection has two endpoints use e-line configuration if more, use e-lan configuration) that is later invalidated (we add an endpoint to the connection later in the program).


## Modeling intent 

The current model (from the [previous chapter](1-basic-deployment.md)) repeats the same structure: 
1. connect to a router
2. set up ports and their ips
3. set up OSPF for these ports 

It is very verbose and unnecessarily so. 
We want the config on all devices to be consistent. If we have a good network design, we want to apply it everywhere and eliminate problems that may occur if some device deviate from the design.  We want to make a re-usable building-block/template.

Consider the question: what is the input needed to configure this network?

Many different answers are possible...

The way we will work it out is the following:
1. For *Routers* we need to know
   - name
   - management ip
2. For an *Interface* we need to know
   - name
   - ip address 


As an inmanta model, we write this as 

``` inmanta
entity Router:       # there is a thing called Router 
    string mgmt_ip   # it has a mgmt_ip that is a string
    string name      # it has a name that is a string
end

entity Interface:    # there is a thing called Inteface
    string name      # it has a name that is a string
    string ip        # it has an ip that is a string
end

Router.interfaces [0:] -- Interface.router [1]
# Every Router has 0 or more interfaces of the type Interface
# Every Interface has exactly one router of the type Router
```

   > :bulb: you can copy the content of `main.cf` somewhere else and copy this code in there


In this code snippet
- `Router` and `Interface` are *entities*. We define them here, much like we could define an object in java, python or any other object-oriented language. 
- `name​`, `mgmt_ip​` and `ip​` are *attributes* of the entities. They are like fields in other object-oriented languages. 
- `Router.interfaces [0:] -- Interface.router [1]​` is the definition of two *relations* `interfaces` and `router`. These relations form a pair: if you set a `Router` as the `router` on an `Interface`, it will automatically add that `Interface` to the `interfaces` on that `Router`.
   -  Relations have an `arity` 
   - `[0:]` means there can be 0 or more (e.g. a router can have no interfaces or many)
   - `[1:]` means there can be 1 or more
   - `[1]` means there can be only one  (e.g. every interface is part of one router, there can be no interface independent of a router and no interface share between two routers)

Inmanta models are not intended to faithfully represent reality (An interface can be detached from a device!), but to clearly define how we see the problem at hand. We make the model as simple as possible, while still supporting all cases that matter to us. We could model this config in different ways, but this is what we chose now. 

   > :bulb: above, we state that `every variable can only ever have one value.` This is true for attributes as well, but not for higher arity relations. A relation can be added to. It behaves like a set: duplicates are removed and order is not defined. 
   
   > :mortar_board: For the theoretically-inclined. The above is not entirely true, a relation can be added to until we determine its length. This code for example is not valid: `if std::len(router.interfaces) == 0: router.interfaces += Interface(...) end`. 


## New model input 

We can now express our model in terms of the entities we defined:

```inmanta
Router(                          # Construct a Router
    name="leaf1",                # set the `name` attribute to `leaf1`
    mgmt_ip="172.30.0.210",      # set the `mgmt_ip` attribute to `172.30.0.210`
    interfaces = [               # add to the interfaces relation a list containing
        Interface(               # A newly constructed Interface
            name="ethernet-1/1", # With the `name` attribute set to `ethernet-1/1`
            ip="10.10.11.2/30",  # and the `ip` attribute set to `10.10.11.2/30`
        )    
    ]
)
```

Like in other object oriented language, we can construct instances of entities. 

> TODO: add the other instances


## Adding an implementation 

We now have an entity defined and instances constructed, but the entity produces no config yet. 
To solve this, we create an implementation. An implementation is a piece of code that gets executed for every instance we construct. It is similar to a constructor in most object oriented languages. 

```inmanta
implementation router_config for Router:         # Create an implementation for Router
    # This is copy pasted / refactored from the previous chapter! 
    ours = nokia_srlinux::GnmiDevice(            # Construct a `GnmiDevice` and assign it to the variable `ours` 
        mgmt_ip=self.mgmt_ip,                    # set the `mgmt_ip` of this new `GnmiDevice` to the `mgmt_ip` of the `Router` we are constructing (referred to as `self`)
        name=self.name,
        yang_credentials=yang::Credentials(
            username="admin",
            password="NokiaSrl1!",
        ),
    )


    for interface in self.interfaces:           # For loop! For every `interface` in the `interfaces` relation of the `Router` we are constructing, repeat the following code:
        nokia_srlinux::Interface(               # Construct an Interface 
            device=ours,                        # Set the device relation to our gnmi device
            name=interface.name,                # set the name attribute of the Interface we are constructing to the name of the interface we are handling in this for loop iteration 
            admin_state="enable",
            subinterface=Subinterface(#Construct a Subinterface entity and add it to the subinterface relation
                x_index=0,
                admin_state="enable",
                ipv4=Ipv4(
                    admin_state="enable",
                    address=nokia_srlinux::interface::subinterface::ipv4::Address(
                        ip_prefix=interface.ip, 
                        primary=true,
                    ),
                ),
            ),
        )
    end
end
```

Implementations, unlike constructors are not enabled by default. You have to attach them to their entity using an implement statement. 

```inmanta
implement Router using router_config
implement Interface using std::none # we don't need an implementation, we make this explicit by using the empty `std::none` implementation
```

This produces the basic interface config. 

You can export this to verify it is correct. 
For ospf, we need a few more tools.

## F-strings 

f-strings in inmanta work like their python counterpart: they allow string substitution.

For example

```inmanta
letter = “a”​
std::print(f"I like {letter}“)​
```

## List comprehensions

List comprehensions in inmanta work like their python counterpart: they allow building lists/relations from other lists/relations.

For example

```inmanta
letters = ["a","b","c"]​
std::print([f"I like {x}" for x in letters])​
```


## Implementing ospf

```inmanta
    # To be added just after the 'end' of the for loop, before the 'end' of the implementation

    nokia_srlinux::NetworkInstance(
        device=ours,
        name="routing",
        interface=[nokia_srlinux::network_instance::Interface(name=f"{interface.name}.0") for interface in self.interfaces],  # List comprehension to construct subinterfaces 
        protocols=Protocols(
            ospf=Ospf(
                instance=Instance(
                    name="1",
                    admin_state="enable",
                    version="srl_nokia-ospf-types:ospf-v2",
                    router_id=self.mgmt_ip,
                    area=Area(
                        area_id="0.0.0.0",
                        interface=[
                            nokia_srlinux::network_instance::protocols::ospf::instance::area::Interface(
                                interface_name=f"{interface.name}.0"
                            ) for interface in self.interfaces]
                    ),
                ),
            ),
        ),
    )
```


## Final check

If you export this model, you should end up with the exact same desired state as before. You can use `select for compare`, `compare with` to verify this.

##  Extra: Assigning to relations

The syntax for assigning to relation is quite flexible:


```
r1 = Router(name="r1", mgmt_ip="127.0.0.1", interfaces=i1)# We add i1 to the interfaces of r1 and set r1 as router of i1

i1 = Interface(name="i1", ip="192.168.0.1", router=r1)    # We add i1 to the interfaces of r1 and set r1 as router of i1 (same)
i2 = Interface(name="i2", ip="192.168.0.2")               # i2 is not connected to a router yet, this is ok

​
r1.interfaces = i1​                                         # We add i1 to the interfaces of r1 and set r1 as router of i1 (same)
r1.interfaces = [i1]                                      # We add i1 to the interfaces of r1 and set r1 as router of i1 (same)
r1.interfaces += [i1]                                     # We add i1 to the interfaces of r1 and set r1 as router of i1 (same)

r1.interfaces += i2​                                        # We add i2 to the interfaces of r1 and set r1 as router of i2, i2 is now valid

r1.interfaces = [i1, i2]                                  # We add both i1 and i2, same as the two previous lines combined.

​
# What comes out?
std::print(r1.interfaces)​
std::print(i1.router)​
std::print(i2.router)
```

We have two operators:
- `=` can always be used
- `+=` makes it explicit the programmer knows he is assigning to a higher arity relation (set), fails on arity `1`, more readable

This means
- For arity 1
   - `a.b = c​`
- For arity >1 (these are all the same)
   - `a.b = c​`
   - `a.b += c` 
   - `a.b += [c]​`
   - `a.b = [c]​`


## Separating the inventory

We have now separated the inventory (the construction of the `Routers` and `Interfaces`) from the template/blueprint/model behavior.
But, they are still in the same file. 

It would be much more interesting if we could separate them. This would allow us to test the model on a small scale and use it on a larger scale (hundreds of routers, thousands of ports).

In the rest of this chapter, we are going to take two steps to separate the inventory from the model:
1. move the model to a module
2. move the inventory to a yaml file 


## Creating a module

Inmanta modules are libraries of re-usable building blocks. They are distributed as python packages. 
Some are [available publicly](https://pypi.org/search/?q=inmanta-module) and [others commercially](https://docs.inmanta.com/inmanta-service-orchestrator/latest/reference/modules.html)
Modules can be [tested using pytest-inmanta](https://github.com/inmanta/pytest-inmanta/). 

To create our first module, we do:

```shell
mkdir libs  # make a folder to hold all our modules
cd libs
inmanta module create training # Use inmanta module create to make the module
  [1/6] module_name (training): 
  [2/6] module_description (): 
  [3/6] author (Inmanta): 
  [4/6] author_email (code@inmanta.com): 
  [5/6] license (ASL 2.0): 
  [6/6] copyright (2025 Inmanta): 

pip install -e training # do an editable install of our new module
```

   > :bulb: for more information about module, [consult the documentation](https://docs.inmanta.com/inmanta-service-orchestrator/latest/model_developers/modules.html).

Now move all code except for the inventory to the `libs/training/` directory.

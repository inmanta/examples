# Configure the network with the orchestrator

## Prequisites 

To follow these instructions, you should have alreayd completed the lab setup (either [here (opensource)](lab/readme.md)) or [here (licensed version)](lab-iso/README.md) 


## Orchestration primer

TODO

To tell the orchestrator what to do, we need to create a desired state for it to apply.  We do this by creating a `project` (locally), which contains a `model` (you can see the top level of the model in the [main.cf](main.cf) file), `compiling` it, and `exporting` its `resources` to the orchestrator.  
For this training, the `project` already exists, this is the folder you are currently working on.  An inmanta `project` is recognized by the  [project.yml file](https://docs.inmanta.com/community/dev/reference/projectyml.html#project-yml) at its root.


Please make sure that the orchestrator is running and that the project and environment were created like instructed on the [README.md](README.md). Don't forget to include your access token on the repository url on the [project.yml file](project.yml)

## Create a virtual environment

A Python virtual environment is an isolated workspace for a Python project, allowing you to manage  project-specific dependencies without affecting other projects or the global Python installation. 
For Inmanta projects, we always work in a virtual environment

1. execute the follow commands to create the venv

    ```shell
    mkdir -p ~/.virtualenvs
    python3 -m venv ~/.virtualenvs/inmanta-training
    source ~/.virtualenvs/inmanta-training/bin/activate
    ```
2. install the basic inmanta tools 

    ```shell
    pip install inmanta-core inmantals
    ```

## Set up a project

This folder contains a valid project. If you want to understand more about what a project is, take a look at the [Developer setup](https://docs.inmanta.com/inmanta-service-orchestrator/latest/model_developers/developer_getting_started.html).


1. To install the project, and its dependencies. Run the following command in this folder
    ```console
    (env) $ inmanta project install
    ```
2. To verify the setup is correct, run
    ```console
    (env) $ inmanta compile
    ```

## Register the project with the orchestrator

To be able to deploy this project, we have to register it with the orchestrator. 
To do so, run 

```console
inmanta-cli --host 172.30.0.3  project create -n training
inmanta-cli --host 172.30.0.3  environment create -n srlinux -p training --save
```

Where we create both a project and an environment:
- An environment is a single domain of management for the orchestrator. Each environment is completely isolated from every other one. 
- For historic reasons, the term project has two meanings. A project (as we create here) is a folder for one or more environments. This is not the same thing as the project that has the `project.yml` which is the main entry point for the orchestrator to manage something.  


> [!NOTE] 
> the `inmanta` command is used to run command locally, the `inmanta-cli` is the remote control for the server.

> [!NOTE] 
> `--save` writes out the `.inmanta` file. This file configures the compile export to the correct environment automatically. 


## Initial deployment


2. Export the resources to the orchestrator, the command will first compile our model, verifying it is correct, then serialize it into resources and send them to the orchestrator.  For each resource it receives, the orchestrator will then deploy them, ensuring their desired state is enforced.
    ```console
    (env) $ inmanta -vv export
    ```

3. Open the orchestrator resource view, and see all the elements of the desired state, being deployed.  Once again, click around to see what is happening.
    ![Alt text](images/orchestrator-resources-page.png)

4. (Optional) Investigating deployment issues.  If you didn't use exactly the same ip plan, or ospf area id or network instance name in the manual configuration as in the inmanta model, the orchestrator might struggle to push the configuration.  You would notice it as some resources would be marked as `failed`.  To fix this you have two options:
    1. Restart the lab and redeploy with the orchestrator, this model will always work on a clean lab.  But it means you will need to reconfigure the subscribers manually.
    2. Open the resource details, and look into the logs for the reason of the failure.  The resource will log the explanation from the router that rejected the config we tried to push.  This should give you the information required to manually fix the device, until its existing configuration doesn't conflict with the one the orchestrator tries to push.


## Discovering the configuration model

The model we compiled and sent to the orchestrator is the one in [configure_ospf.cf](./configure_ospf.cf).  Let's have a look at the different elements in there.  Overall, the file looks like a configuration file, for a distributed system, and it is exactly what it is.

1. The `Router` entities.
    ```
    srlinux_helper::Router(
        name="router-east",
        address="172.30.0.4",
        username="admin",
        password="NokiaSrl1!",
    )
    ```

    These entities represent the devices on which we want to push config.  They don't result in any config themselves, but all the resources we will deploy will be attached to one of them.

2. The `Interface` entities.
    ```
    srlinux_helper::Interface(
        router=router_east,
        name="ethernet-1/1",
        ipv4_address="10.0.1.1/30",
    )
    ```

    These entities represent the interface we want to configure on the device.  The entity is actually an abstraction of the configuration we want to push.  We care about the ip address that should be assigned to the full interface with the given name.  It is way less verbose than the srlinux cli, and matches more the level of abstraction we need for our lab configuration.  If you open the model in the [srlinux_helper](./inmanta-module-srlinux-helper/model/_init.cf#L82) module, you can see how this entity is refined into the exact configuration that srlinux expects.  For more information about refinements, please refer to the language reference documentation: https://docs.inmanta.com/community/latest/language.html#refinements  
    These entities will generate one resource each, looking like `intf-ethernet-1/1`, attached to the device that is referenced in the `router` relation.

3. The `Ospf` entities.
    ```
    srlinux_helper::Ospf(
        router=router_east,
        area_id="1.1.1.1",
        interfaces=[east_to_west, east_to_sub],
    )
    ```

    These entities represent the ospf configuration, and all the interfaces that should be included in it.  Once more, you can have a look at the `srlinux_helper` module to understand better how it is translated to real srlinux configuration.  Each of these entities will emit one resource, looking like `ospf-1.1.1.1`, attached to the device that is referenced in the `router` relation.

All of these components will form our desired state.  Take some time to play with them, and see how easy it is to deploy some changes on the different devices.  You can for example:
- Set the `purged` attribute to `true` for any interface or ospf configuration, then observe that the corresponding configuration has disappeared on the device.
- Change an ip address and see it change on the interface.
- Change the `area_id`, and observe that the resource will fail to deploy... but why?  Well, when that change is made, we will tell the router that we want an ospf area with the given id, attached to the given interfaces.  But these interfaces are also part of the previous area, that we never told the router to remove.  Any how to make this work?  Give it a try and ask for help if you can't figure it out!


> **Next:**
> - [Discover the power of Inmanta's DSL](./2-getting-further.md)

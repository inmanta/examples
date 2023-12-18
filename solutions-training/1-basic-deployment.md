# Configure the network with the orchestrator

## Initial deployment

To tell the orchestrator what to do, we need to create a desired state for it to apply.  We do this by creating a `project` (locally), which contains a `model` (you can see the top level of the model in the [main.cf](main.cf) file), `compiling` it, and `exporting` its `resources` to the orchestrator.  
For this training, the `project` already exists, this is the folder you are currently working one.  An inmanta `project` is recognized by the  [project.yml file](https://docs.inmanta.com/community/dev/reference/projectyml.html#project-yml) at its root.  

1. Install the project, and its dependencies.  Due to the specific setup of this project, you need to install the `srlinux_helper` module manually, as it is currently not released anywhere.
    ```console
    (env) $ pip install -e inmanta-module-srlinux-helper
    (env) $ inmanta project install
    ```

2. Compile the model of the project.  The compiler will verify that our model is correct, and can be serialized into resources which can later be sent to the orchestrator, as instruction of "what to do".
    ```console
    (env) $ inmanta compile -f configure_ospf.cf
    ```

3. Export the resources to the orchestrator, the exporter will take the output of the compiler and send it to the orchestrator.  For each resource it receives, the orchestrator will then have as mission to deploy them, ensuring their desired state is enforced.
    ```console
    (env) $ inmanta export -f configure_ospf.cf
    ```

4. Open the orchestrator resource view, and see all the elements of the desired state, being deployed.  Once again, click around to see what is happening.
    ![Alt text](images/orchestrator-resources-page.png)

5. (Optional) Investigating deployment issues.  If you didn't use exactly the same ip plan, or ospf area id or network instance name in the manual configuration as in the inmanta model, the orchestrator might struggle to push the configuration.  You would notice it as some resources would be marked as `failed`.  To fix this you have two options:
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

    These entities represent the devices on which we want to push config.  They don't result in any config them-self, but all the resources we will deploy will be attached to one of them.

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

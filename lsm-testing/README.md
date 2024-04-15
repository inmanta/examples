# integration_example Module

This module is an example of fully functional integration module, offering two lsm services:
- `BasicService`: this service doesn't do anything, and has a very simple definition.
- `ImportantCustomerService`: this service manages some file on the orchestrator file system, and has a more advanced definition.

The point of this module is to illustrate how to test integration modules.  The module tests, located in the `tests` folder follow and illustrate the recommended guidelines for testing such module.

> :bulb: We ensure that this module's test suite is functional by running it nightly and on commit in our ci infrastructure.  We do recommend you to do the same for your own modules.  However, given that the ci infrastructure is proper to Inmanta, and not part of the guidelines we wish to illustrate, any information related to the implementation of such ci inside of this folder should not be treated as a guideline, or an example, and should be ignored.  Here is the list of files which should therefore be ignored:
> - `.ci-integration-tests.yml`

## Using the module in a project

To use this module in a project, you must simply import the `lsm` submodules which contain the definition of the service you want to use.  And add the configuration file (see next section), which can be empty.  
To use the `BasicService`, your project model will simply look like:
```
import integration_example::services::basic
import integration_example::services::basic::lsm
```

To use the `ImportantCustomerService`, your project model will look like:
```
import integration_example::services::important_customer
import integration_example::services::important_customer::lsm
```

To use both, just join the two model above.

## Module configuration

The services defined in the model offer a file-based interface to customize their behavior.  You should provide the file named `integration-example-config.yml` inside of the `files` folder of your project, and it should look like this:
```yaml
basic_service:
  unique_id_range:                     # Define the range in which all unique ids we allocate to the service instance should be in.
    end: 1000
    start: 0
important_customer_service:
  items_folder: file:///tmp/items      # The folder, on the inmanta orchestrator, where the items file should be created
  orders_folder: file:///tmp/orders    # The folder, on the inmanta orchestrator, where the orders file should be created
  service_id_range:                    # Define the range in which all service ids we allocate to the service instance should be in.
    end: 1000
    start: 0
  service_item_id_range:               # Define the range in which all ids we allocate to the service items should be in.
    end: 1000
    start: 0

```

## Running tests

The test suite of this module cover most of the good weather scenarios for our service, and some of the bad weather ones.  The test suite does the following:
1. Validate that the model is valid for every state of our services.
1. Validate that our services can safely be used with partial compile.
1. Validate that the service can be created, updated, and deleted.
1. Validate that our services work in a real orchestrator, and that multiple instances of the same service can be deployed in the same environment.

Some tests run locally only, and some run on a real, remote, orchestrator. To test all these scenarios, we heavily rely on the `pytest-inmanta-lsm` library, which is meant to make testing of such integration modules easy and reliable.

1. Set up a new virtual environment, then install the module in it. The first line assumes you have [``virtualenvwrapper``](https://virtualenvwrapper.readthedocs.io/en/latest/install.html#basic-installation)
installed. If you don't, you can replace it with `python3 -m venv .env && source .env/bin/activate`.

```bash
mkvirtualenv inmanta-test -p python3.11 -a .
make install
```

2. Some of the tests of this module require a real orchestrator.  With `pytest-inmanta-lsm`, you can start it as a container easily if you provide some environment variables to `pytest`.  These environment variables are already defined in the `.ci-integration-tests.yml` file, and we can extract them by running `make test_env_vars`.  It is then only a matter of exporting them so that `pytest` can read them when we execute it.

```bash
export $(make test_env_vars)
```

3. Run tests

```bash
pytest tests
```

## Types of tests

This module illustrates the typical test coverage you want when developing an integration module.  Here are the different types of test it includes:
1. Mocked test: fast test that doesn't deploy any resources but only compiles the model and verifies it is as expected. Uses the [lsm_project fixture](https://github.com/inmanta/pytest-inmanta-lsm?tab=readme-ov-file#second-case-mocking-the-lsm-api). These tests are used during development to iterate fast.
2. Full test: slower test that use an actual orchestrator and actually deploy the service and take it through its lifecycle. These test verify the behavior of the actual service, as deployed in the field. These test are often slow and complicated, but give real assurance that the service is delivered correctly.
3. Interference test: test to verify the service can run next to itself.  This is usually a refinement of the previously mentioned `Full test`, where we extend this test to run next to itself. 
4. Partial compile test: test to verify that the model is partial compile compatible.  This is a sub-type of the previously mentioned `Mocked test` which will take a service through all the states it can have, and trigger compiles with both partial compile enabled and disabled, to make sure the service is safe to use in both scenarios.

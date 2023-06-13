# From Inventory

This simple project illustrates how process updates in LSM models.

Updates come in four basic level of complexity

1. the config naturally overwrites. 
2. old config has to be removed explictly
3. there is an update procedure that has conflicting states

The three types are explained below.
This project will focus on the second type.


## The config naturally overwrites

For example, 
 - if we have a service that sets the contents of a specific file to a specific value,
 - when we update the contents with a new content 
 - it will naturally overwrite the config. 

This is the easiest scenario, as it will just work. 


## The old config has to be removed

For example, 
 - if we have a service that sets the contents of a specific file on a specific machine to a specific value,
 - when we update the machine the file is on
 - it will create a new file in the new location
 - but we will have to explicitly clean up the old one


This requires detecting the update in the model an emitting cleanup resources. 

## There is an update procedure that has no conflicting states

For example,
 - if we have a service that manages database clusters 
 - when we want to perform a database failover
 - we first have to disable synchronous commit on the master
 - we have to rebuild the secondary
 - we have to re-enable synchronous commit on the master

The desired state of having synchronous commit on and off are conflicting. 
They can not we in the same desired state. This means we have to update the lifecycle to have a two state update. 
# LSM Updates

This simple project illustrates how to process updates to service instance in LSM for entities and embedded entities.

Updates come in three basic levels of complexity

1. the config naturally overwrites. 
2. old config has to be removed explicitly
3. there is an update procedure that has conflicting states

The three types are explained below.
This project will focus on the second level.


## The config naturally overwrites

For example, 
 - if we have a service that sets the content of a specific file to a specific value,
 - when we update the content with a new content 
 - it will naturally overwrite the config. 

This is the easiest scenario, as it will just work. 


## The old config has to be removed

For example, 
 - if we have a service that sets the content of a specific file on a specific machine to a specific value,
 - when we update the machine the file is on
 - it will create a new file in the new location
 - but we will have to explicitly clean up the old one


This requires detecting the update in the model an emitting cleanup resources. 

## There is an update procedure that has conflicting states

For example,
 - if we have a service that manages database clusters 
 - when we want to perform a database failover
 - we first have to disable synchronous commit on the master
 - we have to rebuild the secondary
 - we have to re-enable synchronous commit on the master

The desired state of having synchronous commit on and off are conflicting. 
They can not be in the same desired state. This means we have to update the lifecycle to have a two state update. 
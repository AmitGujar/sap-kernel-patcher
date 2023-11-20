Role Name
=========

This role will execute query scripts on remote sap server

Requirements
------------

Remote sap server should be accessible via ssh

Role Variables
--------------

```
hostname: hostname for remote machine
instance: instance_id
tenant: tenant
username: saphanadb username
password: verystrongpassword
script_location: script location on remote machine
sid_name: sid_name for your sap machine
```
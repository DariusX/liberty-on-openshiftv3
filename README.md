# liberty-on-openshiftv3

## Objective
This demonstrates running a simple WAR in IBM WebSphere LIBERTY (WASdev), running as a Docker image in OpenShift v3

## Approach
The two-step approach is:

1. Use the official websphere-liberty image
2. Drop a WAR file into the directory monitored by LIBERTY (Not S2I)

## To install the template 
The file 'ibmLibertyTemplate.json' contains a template that you must create in your OpenShift v3 installation. Typically, this template would not be in the same project where the WAR was being created; it has been kept here for convenience.

The template can be created so that it is available to all your OpenShift projects. 

1. Login as a cluster-admin (oc login -u system:admin)
2. Select the project named 'openshift' (oc project openshift)
3. Create the template (oc create -f ibmLibertyTemplate.json')

After doing this, when you use the option 'Add to Project', you should see 'websphere-liberty-example' as one of the listed options

## To add to your OpenShift v3 project


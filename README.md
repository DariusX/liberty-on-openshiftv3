# liberty-on-openshiftv3

## Objective
This demonstrates running a simple WAR in IBM WebSphere LIBERTY (WASdev), running as a Docker image in OpenShift v3

## Approach
The two-step approach is:

1. Use the official websphere-liberty image
2. Drop a WAR file into the directory monitored by LIBERTY (Not S2I)

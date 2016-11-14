FROM websphere-liberty:webProfile6

# Add binary deployment artifact to 'dropins' folder
#The assumption here is that the war is already available in the 'app' sub-directory,
COPY app/* /opt/ibm/wlp/usr/servers/defaultServer/dropins/

# IBM WebSphere Liberty license must be accepted
ENV LICENSE $LICENSE

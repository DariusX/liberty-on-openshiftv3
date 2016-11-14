FROM websphere-liberty:webProfile6

# Add binary deployment artifact to 'dropins' folder
#The assumption here is that the war is already available in the 'app' sub-directory (modify permissions on sub-directory)
COPY app/* /opt/ibm/wlp/usr/servers/defaultServer/dropins/
RUN chmod 777 -R /opt/ibm/wlp/ /logs

# IBM WebSphere Liberty license must be accepted
ENV LICENSE $LICENSE

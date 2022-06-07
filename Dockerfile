#Download latest base image ubuntu
FROM ubuntu
#install sftp client and libraries
RUN apt-get update && apt-get -y install openssh-client
#copy over startup file with sftp command
COPY entrypoint.sh /entrypoint.sh

#Make sure to make you entrypoint.sh file executable:
RUN chmod 777 entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
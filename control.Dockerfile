####################################
#       Base image
####################################
FROM python:3.10


####################################
#       Update apt & ping util
####################################
RUN apt-get update -y
RUN apt-get install -y iputils-ping


####################################
#       Setup Ansible
####################################
RUN pip install ansible


####################################
#       Transfer playbook context
####################################
COPY playbook.yml playbook.yml


####################################
#       Add startup commands
####################################
RUN echo "[managed]\n172.18.0.22 ansible_connection=local" >> hosts.ini
RUN echo "ansible-playbook -i hosts.ini playbook.yml -u root" >> startup.sh
RUN echo "tail -f /dev/null " >> startup.sh


####################################
#       Set entrypoint
####################################
CMD ["sh","startup.sh"]
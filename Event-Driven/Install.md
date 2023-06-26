# Alistamiento de maquina para pruebas de Event Driven

### Links de interes

https://ansible-rulebook.readthedocs.io/en/stable/installation.html

https://www.ansible.com/blog/getting-started-with-event-driven-ansible

https://www.youtube.com/watch?v=aqQq5vD8-n0&ab_channel=RedHatAnsibleAutomation

Instalacion de rulebook en mi maquina RHEL 8

```
[root@aap ~]# more /etc/redhat-release
Red Hat Enterprise Linux release 8.6 (Ootpa)

[root@aap ~]# yum install jre-17-openjdk
[root@aap ~]# ls /usr/lib/jvm/jre-17-openjdk
[root@aap ~]# JAVA_HOME=/usr/lib/jvm/jre-17-openjdk
[root@aap ~]# pip3 install ansible-rulebook ansible ansible-runner
```

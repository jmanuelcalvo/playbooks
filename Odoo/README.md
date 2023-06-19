Para el funcionamiento de estos playbooks desde ansible engine, se requiere la descargar de las siguientes collections

```
[root@localhost ~]# ansible-galaxy collection install ansible.posix
[root@localhost ~]# ansible-galaxy collection install containers.podman
```

Comandos de utilidad
```
[root@localhost ~]# podman pod ps
[root@localhost ~]# podman pod top redhat
[root@localhost ~]# podman pod inspect redhat
```

Para la ejecucion y eliminacion de los contenedores
```
[root@localhost ~]# ansible-playbook podman.yml -e cliente=redhat -e puerto=8075
[root@localhost ~]# ansible-playbook podman-remove.yml -e cliente=redhat -e puerto=8075
```

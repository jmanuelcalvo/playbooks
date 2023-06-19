CLIENTE=02

mkdir /var/lib/clienteodoo02
semanage fcontext -a -t container_file_t "/var/lib/clienteodoo02(/.*)?"
restorecon -R -v /var/lib/clienteodoo02

podman pod create -n clienteodoo02 -p 8070:8069
podman run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db02 --volume /var/lib/clienteodoo02:/var/lib/postgresql/data:Z --pod clienteodoo02 postgres:13
podman run -d --pod clienteodoo02 -v cliente02:/etc/odoo -e DB_PORT_5432_TCP_ADDR=db02 --name odoo02 -t odoo

podman  pod ps
podman restart odoo02
firewall-cmd --add-port=8070/tcp

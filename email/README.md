La forma de ejecucion de este playbook es:

1. Dentro de google su cuenta de google, crear una contraseña de aplicacion

https://myaccount.google.com/security -> Contraseñas de aplicaciones

2. Creacion del secret con Ansible Vault de acuerdo a la contraseña de aplicacion de google
```
$ ansible-vault create smtp_secrets.yml
email_smtp_password: 123456789
email_smtp_username: jmanuelcalvo@gmail.com
```

3. Ejecucion del playbook 
```
ansible-playbook  gmail-secret-html.yml --ask-vault-password
```

4. Ingresar la contraseña que creo al momento de la ejecucion del comando `ansible-vault`

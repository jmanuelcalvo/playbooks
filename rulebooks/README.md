Para la prueba mas basica, con el rulebook webhook.yml se puede validar asi:


[ansible@aap27 ~]$ curl -X POST -H "Content-Type: application/json" -d '{
      "host":"server01",
      "action":"deploy"

Para una prueba mas avazanda como por ejemplo un ticket ticket_example.yml podria se asi:

1. Crear un playbook apuntando a playbooks/Event-Driven/ticket_example.yml
2. 


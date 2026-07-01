Para la prueba mas basica, con el rulebook webhook.yml se puede validar asi:


`[ansible@aap27 ~]$ curl -X POST -H "Content-Type: application/json" -d '{
      "host":"server01",
      "action":"deploy"`

Para una prueba mas avazanda como por ejemplo un ticket ticket_example.yml podria se asi:

1. Crear un playbook apuntando a playbooks/Event-Driven/ticket_example.yml
2. Crear una rulebook Activation apuntando a webhook_ticket.yml
3. Ejecutar el playbook a traves de curl
`curl -X POST \
-H "Content-Type: application/json" \
-d '{
      "ticket":"INC12345",
      "hostname":"web01",
      "action":"restart",
      "requested_by":"juan"
}' \
http://aap27:5001`


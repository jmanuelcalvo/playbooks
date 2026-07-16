# Llamados a la API de AAP

```
$ curl -k -u admin:xxx -H "Content-Type: application/json" -X POST https://aap27/api/controller/v2/job_templates/6/launch/ -d '{
  "extra_vars": {
    "sql_server": "Instancia01",
    "drive_letter": "E",
    "new_disk_size_gb": "500"
  }
}'

```

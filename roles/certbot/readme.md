# Certbot role
---
TODO: 
*   ~~Make role idempotent
Currently, main.yaml isn't idempotent as there's no check on the certificate (exists or validity) prior to the certbot command.~~ 

Fortunately, the certbot program is written well enough to recognise that the certificate is still valid and will not provision another one, but the playbook should have a method of validating for idempotency (perhaps mtime).
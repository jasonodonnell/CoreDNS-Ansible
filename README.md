# CoreDNS Deployment

Built on:

* Ansible 2.4
* Vagrant 2.0.3

## Deploy

First edit the `db.dev.io` file located in `roles/coredns/files` and 
add the addresses to the services for DNS queries.

```bash
$ vagrant up
$ ansible-playbook -i inventory coredns.yml
```

## Post Deployment

```bash
$ dig openshift.wizard.io @192.168.2.30
$ dig google.com @192.168.2.30
```

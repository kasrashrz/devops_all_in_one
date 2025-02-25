### This README is built to help us for automation and learning it the right way.

#### some basic confs for you ansible located at /etc/ansible/ansible.cfg

```
vault_password_file = .vault.pass
connection = smart
timeout = 60
deprecation_warnings = False
host_key_checking = False
pipelining = True
forks = 100

```

#### if we want to setup our caching and tune it better in PROJECT/ansible.cfg

```
[defaults]
gathering = smart
fact_caching = jsonfile
fact_caching_connection = /tmp/facts_cache

# two hours timeout
fact_caching_timeout = 7200
```

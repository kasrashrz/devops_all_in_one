--WORKING WITH COMMANDS FOR LPIC101--\
--EVERY NEW COMMAND WILL BE INSERTED HERE--\
--THEIR USAGE, AND A BIT OF DESCRIPTION--\

## 2024-11-09

```
$ modinfo (module info)\
$ systemctl cat $SERVICE_NAME (shows service config file)\
$ systemctl is_active $SERVICE_NAME\
$ systemctl list-unit-files -at service\
$ systemctl list-units --type target (list of targets)\
$ systemctl get-default (default target)\
$ systemctl set-default multi-user.target (set default target)\
<u> $ git rm -r --cached . </u> \

```

## 2024-11-18
### Debian package management

#### Installing packages

```
$ apt-get install XXX\
$ apt-get install -s XXX (dry run / simulation)\
$ apt-get install --download-only XXX (savet at /var/cache/apt/archives/)\
$ apt-get download tmux (saved at current dir)\
```

#### Removing packages

```
$ apt-get remove XXX\
$ apt-get autoremove XXX (removes XXX + its dependencies)\
$ apt-get autoremove\
```

#### Searching for packages

```
$ apt-cache search "tiny window"\
$ apt search grub2\
```

#### Upgrading packages

```
$ apt-get install \
$ apt-get upgrade \
$ apt-get dist-upgrade \
```

#### Reconfiguring packages

```
$ dpkg-reconfigure tzdata \
$ dpkg -s bzr (install without depencies) \
$ dpkg -i (install) \
$ dpkg -I OR dpkg --info \
$ dpkg -P OR dpkg --purge \

```

_aa_

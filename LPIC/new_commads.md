--WORKING WITH COMMANDS FOR LPIC101--\
--EVERY NEW COMMAND WILL BE INSERTED HERE--\
--THEIR USAGE, AND A BIT OF DESCRIPTION--\

## 2024-11-09
## ==========
modinfo (module info)\
systemctl cat $SERVICE_NAME (shows service config file)\
systemctl is_active $SERVICE_NAME\
systemctl list-unit-files -at service\
systemctl list-units --type target (list of targets)\
systemctl get-default (default target)\
systemctl set-default multi-user.target (set default target)\
*** git rm -r --cached . ***\

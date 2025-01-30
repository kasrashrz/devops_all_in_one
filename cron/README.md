#### setting up a simple CRON that comes up at 10:15 PM and mails me 
```
crontab -e # OR crontab -u USER -e
crontab -l
MAILTO='kasthedeveloper@gmail.com'
15 22 * * * /Users/kasrashirazi/Desktop/devops/cron/hello_world.sh > /dev/null 2>&1

```

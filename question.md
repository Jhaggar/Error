

#https://stackedit.io/app#

##Cron

cron only has a resolution of 1 minute. To resolve your issue you need 60 seconds / 10 seconds = 6 cron jobs, each with a sleep.

```
* * * * * ( /bin/bash command )  
* * * * * ( sleep 10 ; /bin/bash command )  
* * * * * ( sleep 20 ; /bin/bash command )  
* * * * * ( sleep 30 ; /bin/bash command )  
* * * * * ( sleep 40 ; /bin/bash command )  
* * * * * ( sleep 50 ; /bin/bash command )  
```
```
* * * * * bash /home/ritesh/Downloads/crontest/crontab.sh
0 4 * * * bash /home/ritesh/Downloads/crontest/test_cron.sh
```

##How to make nested directories 
```
mkdir -p /dir1/dir2/dir3 will create nested directories
```

##You get a call from someone claiming "my system is SLOW ''. What do you do?

- Check with top for anything unusual
- Free -h to check free ram
- Run dstat -t to check if it's related to disk or network.
- Check if it's network related with sar

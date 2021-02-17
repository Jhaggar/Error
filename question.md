

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

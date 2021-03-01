# AWS CLI #
### MarkDown Systax :- https://stackedit.io/app #
```
Nested Json
```
aws ssm get-parameters --names "/<name>" --query "Parameters[*].{Value:Value}" --region=us-east-1 | jq -r '.[].Value' | jq -r '.elastic_search' | jq -r '.endpoint'

```
Get Instance running State :-
```
aws ec2 describe-instances   --instance-ids i-<ID>   --profile PROFILE_NAME   --region us-east-1 |  jq -r .Reservations[].Instances[].State | jq -r '.Name'

```
Verfiy Correct Server
```
>aws ec2 describe-instance-status \
  --instance-id ${InstanceId} \
  --profile ${PROFILE} \
  --region ${AWS_REGION} | jq -r .InstanceStatuses[].InstanceState | jq -r '.Name'
### or ###
>aws ec2 describe-instance-status \
  --instance-id ${InstanceId} \
  --profile ${PROFILE} \
  --region ${AWS_REGION} | jq -r .Reservations[].Instances[].State | jq -r '.Name' 

```
IP Address via Terminal
```
- curl v4.ifconfig.co
- curl ifconfig.me
- curl -4 icanhazip.com
- curl -6 icanhazip.com

```
Update Tag of AWS Resouces
```
>aws ec2 update-security-group-rule-descriptions-ingress \
	--profile ${PROFILE} \
	--region ${AWS_REGION} \
	--group-id {SECURITY_GROUP} \
	--ip-permissions '[{"IpProtocol": "tcp", "FromPort": 22, "ToPort": 22, "IpRanges": [{"CidrIp": "'$IP'/32", "Description": "Automatic added on '$current_date'"}]}]' 

### Cron
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
### If Getting Error
>Traceback (most recent call last):
  File "/usr/bin/aws", line 19, in <module>
    import awscli.clidriver
  File "/usr/lib/python3/dist-packages/awscli/clidriver.py", line 36, in <module>
    from awscli.help import ProviderHelpCommand
  File "/usr/lib/python3/dist-packages/awscli/help.py", line 23, in <module>
    from botocore.docs.bcdoc import docevents
ImportError: cannot import name 'docevents'

### Then Run this :- 
>
- curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
- unzip awscli-bundle.zip
- ./awscli-bundle/install -b ~/bin/aws
- export PATH=~/bin:$PATH

### Some Important packages :-
>
- sudo apt update
- sudo apt install snapd
- sudo snap install authy --beta
- sudo snap install obs-studio
- sudo apt  install awscli -y
- apt install vim -y
- apt install python3 -y
- apt install ansible -y 

### Error getting pip install argparser
```
Exception:
Traceback (most recent call last):
  File "/usr/lib/python2.7/dist-packages/pip/basecommand.py", line 215, in main
    status = self.run(options, args)
  File "/usr/lib/python2.7/dist-packages/pip/commands/install.py", line 353, in run
    wb.build(autobuilding=True)
  File "/usr/lib/python2.7/dist-packages/pip/wheel.py", line 749, in build
    self.requirement_set.prepare_files(self.finder)
  File "/usr/lib/python2.7/dist-packages/pip/req/req_set.py", line 380, in prepare_files
    ignore_dependencies=self.ignore_dependencies))
  File "/usr/lib/python2.7/dist-packages/pip/req/req_set.py", line 554, in _prepare_file
    require_hashes
```

### Solution of pip install argparser:-
```
wget https://files.pythonhosted.org/packages/18/dd/e617cfc3f6210ae183374cd9f6a26b20514bbb5a792af97949c5aacddf0f/argparse-1.4.0.tar.gz

pip install argparse
```













# AWS CLI #
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













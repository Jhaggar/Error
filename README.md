# Error


#AWS CLI#
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
aws ec2 describe-instance-status \
  --instance-id i-<ID> \
  --profile PROFILE_NAME \
  --region us-east-1 | jq -r .InstanceStatuses[].InstanceState[]
### or ###
aws ec2 describe-instance-status \
  --instance-id i-<ID>9 \
  --profile PROFILE_NAME \
  --region us-east-1 | jq -r .Reservations[].Instances[].State | jq -r '.Name' 

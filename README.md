# Error


`AWS CLI` </br>
```
Nested Json
```
aws ssm get-parameters --names "/<name>" --query "Parameters[*].{Value:Value}" --region=us-east-1 | jq -r '.[].Value' | jq -r '.elastic_search' | jq -r '.endpoint'
  
Get Instance running State :-   
aws ec2 describe-instances   --instance-ids i-028f61d2ee774b2f9   --profile albert   --region us-east-1 |  jq -r .Reservations[].Instances[].State | jq -r '.Name'

export CHANGE_TYPEC="create"
export REGION="us-east-1"
export STACK_NAME="sidekscluster"
export TEMPLATE_BODY="eks.yml"
export PARAMETER_FILE="eksclusterparameters.json"

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --region $REGION\
  --template-file $TEMPLATE_BODY \
  --parameter file://$PARAMETER_FILE\
  --capabilities CAPABILITY_NAMED_IAM

export CHANGE_TYPEC="create"
export REGION="us-east-1"
export STACK_NAME="sidvpc"
export TEMPLATE_BODY="vpceks.yml"
export PARAMETER_FILE="vpcparameters.json"

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --region $REGION\
  --template-file $TEMPLATE_BODY \
  --parameter file://$PARAMETER_FILE

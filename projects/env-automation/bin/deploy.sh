#!/usr/bin/env bash

#== Setting up Variables ==
stack_name="exp-net-fun-vpc-stack"
template_file="template.yaml"    # Adjust path if needed
region="us-east-1"

echo "Deploying CFN Stack: $stack_name"

# Deploy the stack
aws cloudformation deploy \
  --stack-name "$stack_name" \
  --template-file "$template_file" \
  --region "$region" \
  --parameter-overrides KeyName=MyKey \
  --capabilities CAPABILITY_NAMED_IAM 

echo "Waiting for stack creation to complete ..."

# Wait for completion
aws cloudformation wait stack-create-complete \
  --stack-name "$stack_name" \
  --region "$region"

echo "Stack $stack_name deployed successfully"

# Print outputs
aws cloudformation describe-stacks \
  --stack-name "$stack_name" \
  --region "$region"


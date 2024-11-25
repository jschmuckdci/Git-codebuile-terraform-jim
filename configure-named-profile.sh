#!/bin/bash
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID --profile $AWS_PROFILE_NAME
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY --profile $AWS_PROFILE_NAME
aws configure set region $AWS_REGION --profile $AWS_PROFILE_NAME
aws configure list --profile $AWS_PROFILE_NAME
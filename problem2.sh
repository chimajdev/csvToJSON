#!/bin/bash

# Prerequisite: AWS CLI installed and configured with proper access
# Make sure you're on the directory where you have your .json file where you defined your task we will call it api-server.json

sudo apt-get update
# Update

sudo apt-get install jq
# Install jq JSON Command Processor on Ubuntu

sudo apt-get update
# Update

aws ecs list-task-definition --cluster ref  --service api
# Reads latest task definition from ecs for a service named ‘api’ from a ‘ref’ cluster

aws ecs describe-services --cluster ref --service api \
--query "services[].taskDefinition" | jq -r ".[0]"
# Reads the image name from latest task
# https://stackoverflow.com/questions/48989351/find-aws-ecs-latest-task-and-image-used

aws ecs register-task-definition --cli-input-json file://api-server.json
# Register a task defintion

aws ecs update-service --cluster ref --service api --task-definition api-server:${TASK_REVISION} --desired-count 2
# Update ‘api’ service with the new task definition
# https://stackoverflow.com/questions/46018883/best-practice-for-updating-aws-ecs-service-tasks

#!/bin/bash

##################
#Author: Manjiri Naik
#Date: 4 August 2025
#Version: v1

# This script will report AWS resource usage
##################

# to run script in debug mode
set -x 

export PATH=/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin

{

#list aws s3 bickets
echo "list of s3 buckets" >> /Users/manjiri/Documents/Devops/shell-scripting/cron_output.txt
aws s3 ls >> /Users/manjiri/Documents/Devops/shell-scripting/cron_output.txt

#list ec2 instances
echo "list of ec2 instances"
aws ec2 describe-instances >> /Users/manjiri/Documents/Devops/shell-scripting/cron_output.txt

#list of lambda functions
echo "list of lambda functions"
aws lambda list-functions >> /Users/manjiri/Documents/Devops/shell-scripting/cron_output.txt

#list iam users
echo "List of IAM users"
aws iam list-users >> /Users/manjiri/Documents/Devops/shell-scripting/cron_output.txt

}

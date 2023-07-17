echo "Exporting Variables"
echo "============================"


#* AWS Related
#* =============================
echo ""
echo "AWS Related Variables"
echo "-----------------------------------"
echo ""
export AWS_REGION=us-west-2
export AWS_AZ=us-west-2a
echo "AWS Region: $AWS_REGION \nAWS AZ: $AWS_AZ"

echo ""
echo "EC2 Metadata Related Variables"
echo "-----------------------------------"
echo ""
export EC2_METADATA_IP=169.254.169.254
export EC2_METADATA_URL=latest/meta-data
export EC2_IAM_METADATA_URL=iam/security-credentials
echo "EC2 Metadata IP: $EC2_METADATA_IP \nEC2 Metadata URL: $EC2_METADATA_URL \nEC2 IAM Metadata URL: $EC2_IAM_METADATA_URL"







#* Challenge Related
#* =============================
# echo ""
# echo "Challenge Related Variables"
# echo "-----------------------------------"
# echo ""
# export CHALLENGE_URL=flaws.cloud
# export BUCKET_URL=http://flaws.cloud.s3-website-us-west-2.amazonaws
# export BUCKET_URL=s3://flaws.cloud.s3-website-us-west-2.amazonaws
# echo "Challenge URL: $CHALLENGE_URL \nBucket URL: $BUCKET_URL"

#* My AWS Account
#* ----------------------------
# echo ""
# echo "My AWS Account Variables"
# echo "-----------------------------------"
# echo ""
# export AWS_ID=
# export AWS_ACCESS_KEY=
# export AWS_SECRET_KEY=
# export AWS_URL=https://$AWS_ID.signin.aws.amazon.com/console
# echo "AWS ID: $AWS_ID \nAWS Access Key: $AWS_ACCESS_KEY \nAWS Secret Key: $AWS_SECRET_KEY \nAWS URL: $AWS_URL"

#* Level 6 Variables
#* ----------------------------
# echo ""
# echo "Level 6 Variables"
# echo "-----------------"
# export L6_BLOCKED_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
# export L6_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud/ddcc78ff/
# export L6_BUCKET_URL=s3://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
# export L6_USER=L6Profile
# export L6_ACCESS_KEY=AKIAJFQ6E7BY57Q3OBGA
# export L6_SECRET_KEY=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
# export L6_IAM_USER=level6
# echo "Level 6 Blocked URL: $L6_BLOCKED_URL\n Level 6 URL: $L6_URL\n Level 6 Bucket URL: $L6_BUCKET_URL\n Level 6 User: $L6_USER\n Level 6 Access Key: $L6_ACCESS_KEY\n Level 6 Secret Key: $L6_SECRET_KEY\n Level 6 IAM User: $L6_IAM_USER\n"



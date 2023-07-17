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

#* Level 1 Variables
#* ----------------------------
# echo ""
# echo "Level 1 Variables"
# echo "-----------------------------------"
# echo ""
# export L1_URL=http://flaws.cloud.s3-website-us-west-2.amazonaws
# export L1_BUCKET_IP=52.92.145.3
# export L1_BUCKET_URL=s3://flaws.cloud
# export L1_SECRET_URL=http://flaws.cloud/secret-dd02c7c.html
# export L1_SECRET_FILE=secret-dd02c7c.html
# echo "Level 1 URL: $L1_URL \nLevel 1 Bucket IP: $L1_BUCKET_IP \nLevel 1 Bucket URL: $L1_BUCKET_URL \nLevel 1 Secret URL: $L1_SECRET_URL \nLevel 1 Secret File: $L1_SECRET_FILE"



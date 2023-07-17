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


#* Level 3 Variables
#* ----------------------------
# echo ""
# echo "Level 3 Variables"
# echo "-----------------------------------"
# echo ""
# export L3_URL=http://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud
# export L3_BUCKET_URL=s3://level3-9afd3927f195e10225021a578e6f78df.flaws.cloud
# export L3_COMMIT=f52ec03b227ea6094b04e43f475fb0126edb5a61
# export L3_SECRET_FILE=access_keys.txt
# export L3_USER=L3Profile
# export L3_ACCESS_KEY=AKIAJ366LIPB4IJKT7SA
# export L3_SECRET_KEY=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
# echo "Level 3 URL: $L3_URL \nLevel 3 Bucket URL: $L3_BUCKET_URL \nLevel 3 Commit: $L3_COMMIT \nLevel 3 Secret File: $L3_SECRET_FILE \nLevel 3 User: $L3_USER \nLevel 3 Access Key: $L3_ACCESS_KEY \nLevel 3 Secret Key: $L3_SECRET_KEY"






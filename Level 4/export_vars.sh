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


#* Level 4 Variables
#* ----------------------------
# echo ""
# echo "Level 4 Variables"
# echo "-----------------------------------"
# echo ""
# L4_URL=level4-1156739cfb264ced6de514971a4bef68.flaws.cloud
# L4_SNAPSHOT_ID=snap-0b49342abd1bdcb89
# L4_VOLUME_ID=vol-01a0d8c03e9dc69bf
# L4_SNAPSHOT_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
# L4_ACCOUNT_ID=975426262029
# L4_USER=L4User
# L4_ACCESS_KEY=AKIATQBOZIW67V6FCRAW
# L4_SECRET_KEY=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
# L4_KEY=L4Key
# L4_AWS_AZ=us-west-2b
# L4_VM=Flaws_L4_VM
# L4_INSTANCE_TYPE=t2.micros
# L4_IMAGE=ami-0fcf52bcf5db7b003
# L4_NEW_VM_ID=i-03d9396c835f1f6d6
# L4_VM_NAME=Flaws_L4_VM
# L4_NEW_VM_IP=52.27.226.102
# L4_VM_HOST=ec2-52-27-226-102.us-west-2.compute.amazonaws.com
# L4_VM_USER=ubuntu
# L4_NGINX_USER=flaws
# L4_NGINX_PASSWORD=nCP8xigdjpjyiXgJ7nJu7rw5Ro68iE8M
# echo "Level 4 URL: $L4_URL \nLevel 4 Snapshot ID: $L4_SNAPSHOT_ID \nLevel 4 Volume ID: $L4_VOLUME_ID \nLevel 4 Snapshot URL: $L4_SNAPSHOT_URL \nLevel 4 Account ID: $L4_ACCOUNT_ID \nLevel 4 User: $L4_USER \nLevel 4 Access Key: $L4_ACCESS_KEY \nLevel 4 Secret Key: $L4_SECRET_KEY \nLevel 4 Key: $L4_KEY \nLevel 4 AWS AZ: $L4_AWS_AZ \nLevel 4 VM: $L4_VM \nLevel 4 Instance Type: $L4_INSTANCE_TYPE \nLevel 4 Image: $L4_IMAGE \nLevel 4 New VM ID: $L4_NEW_VM_ID \nLevel 4 VM Name: $L4_VM_NAME \nLevel 4 New VM IP: $L4_NEW_VM_IP \nLevel 4 VM Host: $L4_VM_HOST \nLevel 4 VM User: $L4_VM_USER \nLevel 4 Nginx User: $L4_NGINX_USER \nLevel 4 Nginx Password: $L4_NGINX_PASSWORD"


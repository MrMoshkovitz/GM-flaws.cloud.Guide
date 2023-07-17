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


#* Level 2 Variables
#* ----------------------------
# echo ""
# echo "Level 2 Variables"
# echo "-----------------------------------"
# echo ""
# export L2_URL=http://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/
# export L2_BUCKET_URL=s3://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/
# export L2_SECRET_URL=s3://level2-c8b217a33fcf1f839f6f1f73a00a9ae7.flaws.cloud/secret-e4443fc.html
# export L2_SECRET_FILE=secret-e4443fc.html
# echo "Level 2 URL: $L2_URL \nLevel 2 Bucket URL: $L2_BUCKET_URL \nLevel 2 Secret URL: $L2_SECRET_URL \nLevel 2 Secret File: $L2_SECRET_FILE"

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




#* Level 5 Variables
#* ----------------------------
# EC2_METADATA_IP=169.254.169.254
# EC2_METADATA_URL=latest/meta-data
# EC2_IAM_METADATA_URL=iam/security-credentials

# echo ""
# echo "Level 5 Variables"
# echo "-----------------------------------"
# echo ""
# export L5_URL=level5-d2891f604d2061b6977c2481b0c8333e.flaws.cloud
# export L5_EC2_URL=4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud
# export L5_EC2_PROXY=http://4d0cf09b9b2d761a7d87be99d17507bce8b86f3b.flaws.cloud/proxy
# export L5_EC2_METADATA_URL=http://$L5_EC2_PROXY/$EC2_METADATA_IP
# export L5_USER=flaws
# echo "Level 5 URL: $L5_URL \nLevel 5 EC2 URL: $L5_EC2_URL \nLevel 5 EC2 Proxy: $L5_EC2_PROXY \nLevel 5 EC2 Metadata URL: $L5_EC2_METADATA_URL \nLevel 5 User: $L5_USER"

# export L5_PROXY_MAIN=flaws.cloud
# export L5_PROXY_FEED=summitroute.com/blog/feed.xml
# export L5_PROXY_NEVERSSL=neverssl.com
# export L5_ACCESS_KEY=ASIA6GG7PSQG2KIG27NP
# export L5_SECRET_KEY=bSCfUPs8ZoW46GxHHViwBA3vJNH9+U2NLUfPC4tc
# export L5_TOKEN=IQoJb3JpZ2luX2VjENT//////////wEaCXVzLXdlc3QtMiJHMEUCICysxf8e25Ao5/bX7HA0OElp5/RnrV8zMCrJwuCup0+VAiEAmc1uLD5e9NbT1px9rBJZEZnWVETMbu6Cn3ZinbkJ6qcquwUIvf//////////ARADGgw5NzU0MjYyNjIwMjkiDGIiCNBVyz80c8UvFCqPBToN3XQ1BlpYWcvCHVp9s9FlhdQZSCz2TGpnbH6i9lDNH+CH0iI3+eq6/GCrQFMN2YtFv4c4joUbFbmvbxv3p4UuG1FeO3bunakS3DzqSBEF2vMNWNKiwRvOOMHstHXBkPDuK2ciHAVzAQ3JaUZEskTq7TXe4gb/i+Epkx0T3NFnX805JflQKqA6YIdHHcR71PdKKvmFxAOhFLZhdvyKYrlf76xxGjirHjXJmNiA8p/PU8ZzsOYTV0Y6kxMVHJGqwVvH4Cng+iBtL+WfponpZRMgHcBvLw0a2mMrX20BjmI7ifJAfZ9bjX90FnFvqccnnEhYjycEbty+mRtLFmDPo0KM2mbgcQWxp+s1uwzAZTI8Ft4xY6UpHDmAF/6kAU1TNUJuuOz1NtAyxwPly6+k5GaayFumsRW4VbUucLTfeQGOBUlwJAtcT2DUg5kMT9QxNz+RAFpch0f0UCGie2LOlYtg5CIbnN1IxgYjNDcp9MPqYGvVB/g5VnIxZQNHjYE65Q4ScYxwV7UIgqHcG9ZHdjRxEc/jivLvrbcqidUpoxwv55YWTpkvENLgxpQPgX98n1Kmv1ycXYVkfbTvfnPqoWz9QKIITbF+inM+oVE2IT/7jQXnnU3USLHV1DUjOxMeYZ+1BzgwQB6nZYUtvMnESVa5R0iI7r+gPOIeNcVFL3HgeD6ZuN0ZGHzDO7TvuNo4R9D+5pUQ8F4jjkZA5ynmCGkwplOlPY0EeYjl4wnAOBhjvrX20MbbPwZ6yXevi5RlkpFWr5Yennp0cXCNxUsf7Nu5EAaYFgD+PpaGRrHBkgGg9GfGQlrUE13bKVLmJsAQOuokwf9aMGc6yj9YlB5SVsjratoon+e9It1/jwb33jMwqrraoQY6sQGUxpVr3JxA1UBSG3lCGGI5seaaSLOlnTT4G03cpBaCd2RxxISOlv3LtXs5bsLCzR2+eHUeulhCn9mH/Q/SDm5ysm7ztt4DJVzqZy+2CZ+yH9aXzOHOmHhQisOboLdj9V3NMQ/9P8ZKeWpVyQSTcEaK3kJ9mkbP7NJSWOnnW1S7r0kSyq2p8v0My/6ge4gtxeZTkzws4nRcS3XIlzoqlDxHGnwDzz/op65TdyGre0bPiQ8=
# export L6_BLOCKED_URL=http://level6-cc4c404a8a8b876167f5e70a7d8c9880.flaws.cloud
# echo "Level 5 Proxy Main: $L5_PROXY_MAIN\n Level 5 Proxy Feed: $L5_PROXY_FEED\n Level 5 Proxy NeverSSL: $L5_PROXY_NEVERSSL\n Level 5 Access Key: $L5_ACCESS_KEY\n Level 5 Secret Key: $L5_SECRET_KEY\n Level 5 Token: $L5_TOKEN"



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



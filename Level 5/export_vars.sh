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



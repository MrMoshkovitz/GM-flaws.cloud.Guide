#*      Source Environment Variables
#? ----------------------------------------
. ./Flaws.Cloud.Vars.env

policies_full_output=()

for policy in $(echo "$L6_IAM_USER_POLICIES" | jq -c '.[]'); do
    policy_arn=$(echo "$policy" | jq -r '.PolicyArn')
    policy_name=$(echo "$policy" | jq -r '.PolicyName')
    policy_version=$(echo "$policy" | jq -r '.DefaultVersionId')
    policy_document=$(aws --profile $L6_USER iam get-policy-version --policy-arn "$policy_arn" --version-id "$policy_version" --query 'PolicyVersion.Document' --output json)
    policy_dict="{\"PolicyName\":\"$policy_name\",\"PolicyArn\":\"$policy_arn\",\"DefaultVersionId\":\"$policy_version\",\"PolicyDocument\":$policy_document}"
    policies_full_output+=("$policy_dict")
done

# join the policy objects in the array with a comma and surround with square brackets
policies_full_output="[$(IFS=, ; echo "${policies_full_output[*]}")]"
echo $policies_full_output
export L6_IAM_USER_POLICIES_FULL="$policies_full_output"

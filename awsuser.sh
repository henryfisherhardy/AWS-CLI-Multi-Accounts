#!/bin/bash
# put this in "~/bin/aws.sh"

AWS_DEFAULT_REGION='ap-southeast-2' # Set default region
case "$1" in
"sniip")

   AWS_ACCESS_KEY='lololololololololololololSNIIP'
   AWS_SECRET_KEY='lololololololololololololSNIIP'
   AWS_DEFAULT_REGION='ap-southeast-SNIIP' #if you leave this blank you get your default region set in line 3
   export AWS_ACCOUNT='SNIIP'
   ;;

"dag")
   AWS_ACCESS_KEY='lololololololololololololDAG'
   AWS_SECRET_KEY='lololololololololololololDAG'
   AWS_DEFAULT_REGION='ap-southeast-2DAG'
   export AWS_ACCOUNT='DAG'
   ;;
"henryhardy")
   AWS_ACCESS_KEY='lololololololololololololHH'
   AWS_SECRET_KEY='lololololololololololololHH'
   AWS_DEFAULT_REGION='ap-southeast-2HH'
   export AWS_ACCOUNT='HENRYHARDY'
   ;;

*)

   export AWS_ACCOUNT="No account"
   ;;
esac

cat > /Users/henryhardy/.aws/config << EOF

[default]
output = json
region = $AWS_DEFAULT_REGION
aws_access_key_id = $AWS_ACCESS_KEY
aws_secret_access_key = $AWS_SECRET_KEY

EOF

echo "$AWS_ACCOUNT is loaded and ready for use."

# Permissions
An AWS Access Key/Secret Access key pair is needed to deploy all this. I originally deployed with admin level credentials, but have since gotten it down to:
## official AWS policies
IAMFullAccess
AmazonS3FullAccess
AWSLambda_FullAccess

## Custom policy
CloudFormation
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "cloudformation:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Deny",
            "Action": [
                "cloudformation:DeleteStack"
            ],
            "Resource": "*"
        }
    ]
}

This could certainly be better, but hopefully it is better than full admin

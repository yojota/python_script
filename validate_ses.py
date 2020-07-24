import json     #Python standard library
import boto3    #sudo pip install boto3
from botocore.exceptions import ClientError

# The full path to the file that contains the identities to be verified. 
# The input file must be JSON-formatted. See
# https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sample-code-bulk-verify.html 
# for a sample input file.
FILE_INPUT = 'identities.json'

# If necessary, replace us-west-2 with the AWS Region you're using for Amazon SES.
AWS_REGION = "sa-east-1"

# Create a new SES resource specify a region.
client = boto3.client('ses',region_name=AWS_REGION)

# Read the file that contains the identities to be verified.
with open(FILE_INPUT) as data_file:
    data = json.load(data_file)

# Iterate through the array from the input file. Each time an object named
# 'email' is found, run the verify_email_identity operation against the value 
# of that object.
for i in data:
    try:
        response = client.verify_email_identity(
            EmailAddress=i['email']
    )
    # Display an error if something goes wrong.	
    except ClientError as e:
        print(e.response['Error']['Message'])
    # Otherwise, show the request ID of the verification message.
    else:
        print('Verification email sent to ' + i['email'] + '. Request ID: ' + 
              response['ResponseMetadata']['RequestId'])
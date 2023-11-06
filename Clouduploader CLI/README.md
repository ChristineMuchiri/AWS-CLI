# S3 UPLOAD TOOL
## Overview
A bash-based CLI tool that allows users to quickly upload files to a specified cloud storage solution, providing a simple and seamless upload experience similar to popular storage services.

## Prerequisites
Have AWS CLI installed and configured with the necessary credentials.
For installation and configuration of AWS CLI [Configure AWS CLI(https://github.com/ChristineMuchiri/AWS-CLI/blob/main/ConfigureAWSCLI)]

## Installation
1. Clone this repo to your local machine.
   git clone https://github.com/ChristineMuchiri/AWS-CLI.git
   cd Clouduploader CLI
2. Make the script executable
   chmod +x clouduploader

## Usage
The tool allows you to upload a local file to an S# bucket.
./clouduploader <bucket_name> <local_file_path> <s3_destination_key>
<bucket_name> : name of the s3 bucket where you want to upload the file
<local_file_path> : the local file path you want to upload
<s3_destination_key> : the path to the destination in the s3 bucket

# Common Issues and Troubleshooting
## 1. AWS CLI not installed
Make sure you have the AWS CLI installed and configured. You can install it using the official [AWS CLI installation guide(https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

## Provide a file path
If you see the error "Provide file path" when running the script, ensure you provide the local file path as an argument when running the script

## Fileupload not succesful
If the script displays "File upload not successful," check the following:
Verify the S3 bucket name and key.
Ensure that the AWS CLI has the necessary permissions to upload to the specified S3 bucket.
Check the S3 bucket's access control settings.

# contributors
Christine Muchiri
Feel free to contribute to this project or report any issues on GitHub.

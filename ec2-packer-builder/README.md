EC2 AMI used to invoke packer to build images. 
This can be useful when packer or aws cli is not installed on your laptop
Note that his image does *not* contain or require access keys. Instead, it requires that an IAM role be associated with the instance during EC2 instance creation. 
The permissions that need to be associated with the role are defined here: https://www.packer.io/docs/builders/amazon.html#iam-task-or-instance-role

Regarding where the packer configuration resides, I have been putting them in a S3 bucket to minimize external dependencies.
If this is the case, the role for this instance will also need to have S3FullAccess policy

Then the process used to build an image is (for example):

#SSH into Packer Builder Ec2 instance using publicIP and pem 
ssh ec2user@<publicIP> -i my.pem

# should have aws cli and packer binary on the path
# the instance should also have all the permissions needed to create EC2 instances, and also access S3 buckets


# s3 sync <source> <dest>
aws s3 sync s3://bwflood-packer-config .

cd jenkins-slave
packer build ami.json


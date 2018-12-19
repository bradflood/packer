EC2 AMI used to invoke packer to build images. 
This can be useful when packer or aws cli is not installed on your laptop
Note that his image does *not* contain or require access keys. Instead, it requires that an IAM role be associated with the instance during EC2 instance creation. 
The permissions that need to be associated with the role are defined here: 

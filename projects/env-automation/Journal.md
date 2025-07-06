## VPC Settings

These are the VPC Settings I setup following Tim VPC setup in the video.

VPC IPv4 CIDR Block: 192.168.100.0/24
IPv6 CIDR Block: No
Number of AZ: 1
Number of Public Subnets: 1
Number of Private Subnets: 1
NAT Gateways: none
VPC Endpoints: none
DNS Options: enable DNS Hostname
DNS Options: enable DNS resolutions

## Deploying Cloudformation Template using Script

With the help of LLM, I created a template for cloudformation that will automate the creation of the VPC parameters above.

I also created a script to automate the deployment of the CFN stack using AWS CLI.

This is the resource map of the VPC deployed using CloudFormation.

![VPC resource map](assets/aws_vpc_resource_map.png)

## How to Deploy


### Check Your AWS Account

Make sure that AWS CLI is already installed in your system.

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

In order to use AWS CLI you need to login first to your account. Run the command:

```sh
aws configure
```

It will prompt you to enter:

- 1. AWS Access Key ID:

- 2. AWS Secret Access Key:

- 3. Default region name (like us-east-1):

- 4. Default output format (like json):

These values are then saved in:

- ~/.aws/credentials – your access keys

- ~/.aws/config – your region and output settings

If you forget your cli keys, you can create a new one in the management console. Just go to **IAM section** and find the **security credentials options**.


```sh
aws sts get-caller-identity
```
This command will tell you who's login now.

### You need to run this command to deploy the CFN template

```sh
cd project/env-automation
chmod u+x ./bin/deploy
./bin/deploy
```


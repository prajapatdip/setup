# KubeMonitor AWS Deployment

This repository provides Terraform and Ansible scripts to deploy KubeMonitor on AWS. Deploying KubeMonitor on AWS allows you to efficiently monitor your Kubernetes cluster's health, performance, and events. Follow the steps below to set up KubeMonitor on your AWS infrastructure.
## Prerequisites

Before you begin, ensure you have the following prerequisites:

- [x]  [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed on your local machine.
- [x]  [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html) installed on your local machine.
- [X]  AWS Account.
- [X]  [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed on your local machine.
- [X]  AWS credentials set up with the necessary permissions.

## Getting Started
NOTE: Before running the scripts, make sure to update the variable values in the configuration files where values are not provided.

#### Step 1 : Install dependencies.

```
ansible-galaxy collection install kubernetes.core
ssh-keygen
```

#### Step 2 : Create EC2 Instance on AWS using Terraform

```
terraform init
terraform plan
terraform apply
vim inventory <instance.private_ip>
```

#### Step 3 : Authorizing the local machine wiht remote machine

```
cat .ssh/id_rsa.pub (copy the public key)
ssh -i <pwd>/ansible ubuntu@<instance.public_ip>
ssh-keygen
vim .ssh/authorzied_keys (past the copied public key)
exit
```

### Step 4 : Starting the application using Ansible
NOTE: If get an error in "Set permission to run docker as root" task then re-run the the below command

```
ansible-playbook -i inventory site.yml
```
### Start using KubeMonitor!
Go to <instance.public_ip>:3001/ and enjoy your new k8s experience!

## Demo
Check out the demo of setting up KubeMonitor on AWS in the following video: [Demo Video](https://drive.google.com/file/d/1RiCvqvHd6nAZONcWS2MEEAEOCQMSyCli/view?usp=drive_link)

## References
For this installation, I have referred to the following sources:
* [Terraform Documentation](https://developer.hashicorp.com/terraform/docs): Explore Terraform's official documentation for in-depth guidance on infrastructure as code.
* [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html): Refer to the Ansible documentation for comprehensive information on automating tasks and configuration management.
* [AWS Documentation](https://docs.aws.amazon.com/): Access the official AWS documentation for detailed resources on Amazon Web Services.
* [ChatGPT](https://chat.openai.com): Explore ChatGPT for more information on language models and natural language processing.

Feel free to visit these links to get started with AWS, Ansible, and Terraform. They provide valuable resources and guides to enhance your understanding of the technologies involved.
## Contributing

We welcome contributions from the community. If you find any issues or have ideas for improvements, please feel free to open an issue or submit a pull request.
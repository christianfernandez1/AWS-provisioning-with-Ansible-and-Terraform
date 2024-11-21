AWS Server Provisioning with Terraform & Ansible
This repository demonstrates the process of provisioning and managing an AWS EC2 instance using Terraform and Ansible, alongside setting up a Nginx web server. It is designed to automate the deployment of infrastructure and application using Infrastructure as Code (IaC) principles.

Project Overvie
This project involves:

AWS EC2 Provisioning: Using Terraform to create and manage an EC2 instance.
Configuration Management: Using Ansible to automate the setup of an Nginx web server on the EC2 instance.
Key Pair Management: Handling SSH key pairs for secure access to the EC2 instance.
Web Server Setup: Configuring Nginx to serve a basic static web page.
Terraform Automation: Automating the deployment and provisioning of resources on AWS.
Prerequisites
Before getting started, make sure you have the following installed:

Terraform: For provisioning AWS resources.
Ansible: For configuration management of the EC2 instance.
AWS CLI: For interacting with AWS.
SSH Key Pair: For accessing your EC2 instance securely.
Files in this Repo
terraform.tf: Contains Terraform configurations for creating and managing an EC2 instance on AWS.
nginx-setup.yml: Ansible playbook to install and configure Nginx on the EC2 instance.
inventory.ini: An Ansible inventory file, specifying the target EC2 instance.
hosts.ini: Stores host-specific information like IP addresses for use with Ansible.
Steps to Deploy
Step 1: Provision EC2 Instance with Terraform
Clone the repository and navigate to the Terraform directory:

bash
Copy code
git clone https://github.com/your-username/aws-server-provisioning.git
cd aws-server-provisioning/terraform
Initialize Terraform:

bash
Copy code
terraform init
Apply the Terraform configuration to provision an EC2 instance:

b
Copy code
terraform apply
Terraform will prompt for confirmation. Type yes to proceed.
Note the Public IP of your EC2 instance (you’ll need it for Ansible).

Step 2: Configure the EC2 Instance with Ansible
Ensure you have the SSH Key Pair for the EC2 instance available on your local machine.

Navigate to the Ansible directory:

bash
Copy code
cd aws-server-provisioning/ansible
Run the Ansible playbook to configure Nginx on the EC2 instance:

bash
Copy code
ansible-playbook -i inventory.ini nginx-setup.yml
Ansible will use the IP address in inventory.ini to connect to the EC2 instance and run the playbook to install Nginx.
Key Features
Automated EC2 Provisioning: Using Terraform to create and manage the EC2 instance, ensuring consistency and repeatability.
Nginx Configuration: With Ansible, the EC2 instance is configured to run Nginx and serve a default static web page.
Secure Access: Uses an SSH key pair for secure connection to the EC2 instance.
Notes
Sensitive Information: Any sensitive information, such as AWS access keys, should be stored securely (e.g., using environment variables or encrypted secrets managers) and should not be included directly in the repository.
Private Repository: This repository is private for now. Once complete, consider making it public for others to use.

**AWS Server Provisioning with Terraform & Ansible**

This repository demonstrates the process of provisioning and managing an AWS EC2 instance using Terraform and Ansible, alongside setting up a Nginx web server. We have also automated the deployment of Infrastructure as Code (IaC) principles.

**Project Overview**
This project involves:

**AWS EC2 Provisioning**: Using Terraform to create and manage an EC2 instance.
**Configuration Management**: Using Ansible to automate the setup of an Nginx web server on the EC2 instance.
**Key Pair Management:** Handling SSH key pairs for secure access to the EC2 instance.
**Web Server Setup:** Configuring Nginx to serve a basic static web page.
**Terraform Automation:** Automating the deployment and provisioning of resources on AWS.


**Prerequisites**
Prior to starting this project, you want to make sure the following is installed on your local machine:

**Terraform**: An open-souce tool that automates the deployment management for provisioning AWS resources.

**Ansible**: For configuration management of the AWS EC2 instance.

**AWS CLI**: For interacting with AWS EC2 Instance

**SSH Key Pair**: For accessing your EC2 instance securely from whichever IDE or Terminal


**Files in this Repo**

**terraform.tf**: Contains Terraform configurations for creating and managing an EC2 instance on AWS.

**nginx-setup.yml**: Ansible playbook to install and configure Nginx on the EC2 instance.

**inventory.ini:** An Ansible inventory file, specifying the target EC2 instance.

**hosts.ini:**Stores host-specific information like IP addresses for use with Ansible.

**README.md** - Project documentation.

**main.tf** - Terraform configuration to define and provision AWS Instance.

**playbook.yml** - Ansible playbook for running commands on the EC2 instance.

Setup Instructions
1. Configure AWS CLI:
- Before running any commands, ensure you have AWS CLI configured on your machine with the correct credentials. You can configure AWS CLI using the following command:

```bash
aws configure
```
- This will prompt you for your AWS Access Key ID, Secret Access Key, and the region you want to work in.


2. Terraform:
- Install Terraform on your local machine.
- In main.tf, ensure you have the correct AWS region and credentials set up for your environment.
To initialize the Terraform working directory:

```
bash
terraform init
```

- To apply the Terraform configuration and create the EC2 instance:

```
bash
terraform apply
```

- After running terraform apply, Terraform will provision the EC2 instance on AWS.

3. Ansible:
- Install Ansible on your local machine.
- Modify the hosts.ini and inventory.ini files to include the IP address of your EC2 instance.
- Make sure your EC2 instance's security group allows SSH access (port 22).
- Use the Ansible playbooks (nginx-setup.yml and playbook.yml) to configure the EC2 instance.

4. Running the Playbooks:
-To run the playbook and set up Nginx on your EC2 instance, use the following Ansible command:

```
bash
ansible-playbook -i hosts.ini nginx-setup.yml
```

The playbooks will automate the process of configuring your EC2 instance with the desired configurations.


This project utilizes terraform and ansible to provision an AWS EC2 Instance. We have also used ansible to install NGINX on the instance that the user could access by its public IP Address. With the help of ansible and terraform, we reduce the manual effort to configure the server, proving to be efficient and effective.

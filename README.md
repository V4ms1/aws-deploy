# How install Ansible

Ansible works by configuring client machines from a computer that has the Ansible 
components installed and configured.

It communicates over normal SSH channels to retrieve information from remote machines, 
issue commands, and copy files. Because of this, an Ansible system does not require any additional 
software to be installed on the client computers.

## Installation

Use the this link:- https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-14-04

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

sudo apt update
sudo apt install ansible

cat ~/.ssh/id_rsa.pub


sudo apt update
sudo apt install python
```

## Usage

```python
cd ..../aws-deploy/ansible/
ssh-keygen -R 172.16.16.152
ssh-copy-id rezuser@172.16.16.152
ssh rezuser@172.16.16.152

ansible all -m ping

ansible-playbook playbook-tomcat-server.yml --ask-pass

or

ansible-playbook playbook-tomcat-server.yml --ask-become-pass
```

# How install Terraform

Terraform must first be installed on your machine. Terraform is distributed as a binary package 
for all supported platforms and architectures. This page will not cover how to compile Terraform from source, but compiling from source is covered in the documentation for those who want to be sure they're compiling source they trust into the final binary.

## Installation

Use the this link:- https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-14-04

```bash
sudo apt-get install unzip

wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip

unzip terraform_0.11.10_linux_amd64.zip


sudo mv terraform /usr/local/bin/


terraform --version 
```

## Usage

```python
cd ..../aws-deploy/terraform/

terraform init

terraform apply
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
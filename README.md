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
ssh-keygen -R 172.16.16.152
ssh-copy-id rezuser@172.16.16.152
ssh rezuser@172.16.16.152

ansible all -m ping

ansible-playbook playbook-tomcat-server.yml --ask-pass

or

ansible-playbook playbook-tomcat-server.yml --ask-become-pass
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
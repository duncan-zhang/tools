
# Installing Ansible on Ubuntu

```sh
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

[Ansible Community Documentation](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu)

#安裝後測試

編輯ansible hosts
```sh
sudo vim /etc/ansilble/hosts
```
新增主機
```sh
[local] #自訂名稱
server1 ansible_ssh_host=127.0.0.1  ansible_ssh_port=22
```
建立測試yml
```sh
vim hello.yml
```
測試yml內容
```sh
---
#測試yml
- name: say 'hello world'
  hosts: local
  tasks:

    - name: echo 'hello world'
      command: echo 'hello world'
      register: result

    - name: print stdout
      debug:
        msg: "{{ result.stdout }}"
```
測試ansible
```sh
ansible-playbook hello.yml
```

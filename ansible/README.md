# ansible

This post is about how to test Ansible on your local machine.

## 1. install

```
# macOS
brew install ansible

# other platform
pip install ansible
```

## 2. usage

### 2.1 prepare

Make sure the following command can work:
```
ssh xuxuwang@127.0.0.1
```

```
mkdir ansible-test
cd ansible-test

touch hosts playbook.yml
```

### 2.2 edit hosts

Here are the contents of file hosts:
```
[local]
127.0.0.1
```

### 2.3 edit playbook.yml

Here are the contents of file playbook.yml:
```
- hosts: 127.0.0.1
  user: xuxuwang
  tasks:
    - name: do something in the shell
      shell: echo hello > /tmp/abc.txt
```

### 2.4 run

```
ansible-playbook -i hosts playbook.yml
```

## references
1. [Getting Started with Ansible](https://www.linode.com/docs/applications/configuration-management/getting-started-with-ansible)
1. [An Ansible Tutorial](https://serversforhackers.com/an-ansible-tutorial)

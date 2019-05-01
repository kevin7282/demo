# Simple practice 

## Table of contents

- [1. QuickStart](#1-quickstart)
- [2. Overview](#2-overview)
- [3. Requirements](#3-requirements)
- [4. Usage](#4-usage)
- [5. After Install](#5-after-install)

## 1. QuickStart

```
# Deploy JIRA to a remote server
ansible-playbook jira.yml -i hosts

```

## 2. Overview

OMSDEV.java is simple for PKI login automation


## 3. Requirements

Ansible is installed in Ansible host machine. and run Ansible playbook to install JIRA on an existing private cloud VM

```
git clone *
```

## 4. Usage

1. `git clone *` 
2. create a host name with a list of JIRA hosts
3. run the Ansible playbook, the fastest way is:

Example:
```
ansible-playbook site.yml -i hosts
```

### 5. After install

To check the host: http://{{ hostname }}:{{ http_port }}

Example:
```
http://172.29.94.49:8080
```

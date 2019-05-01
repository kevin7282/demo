# Ansible deployment to install JIRA 

## Table of contents

- [1. QuickStart](#1-quickstart)
- [2. Overview](#2-overview)
- [3. Requirements](#3-requirements)
- [4. Usage](#4-usage)
  - [4.1 Playbook Arguments for JIRA installer](#41-playbook-arguments-for-jira-installer)
  - [4.2 Playbook Arguments for JIRA host](#42-playbook-arguments-for-jira-host)
- [5. After Install](#5-after-install)

## 1. QuickStart

```
# Deploy JIRA to a remote server
ansible-playbook jira.yml -i hosts

```

## 2. Overview

An Ansible playbook to automate the installation of Atlassian Jira.

The Task performed by the playbook are:

	- install or check if jre1.8.0_201 is installed
	- create groups jira(51124) and citools(65748)
	- create a user jira(50124) belongs to the group jira(51124) 
	- add a user to the group citools
	- setup sudo rules to ensure any user in group citools can su as jira
	- change new mapping name from /disk1 to /jira-sandbox
	- change /jira-sandbox ownership to jira:jira
	- run JIRA bin file with response.varfile


## 3. Requirements

Ansible is installed in Ansible host machine. and run Ansible playbook to install JIRA on an existing private cloud VM

```
git clone http://git@bitbucket.sunlifecorp.com:7990/scm/au/ansiblejira.git
```

## 4. Usage

1. `git clone http://git@bitbucket.sunlifecorp.com:7990/scm/au/ansiblejira.git` 
2. create a host name with a list of JIRA hosts
3. run the Ansible playbook, the fastest way is:

Example:
```
ansible-playbook jira.yml -i hosts
```

### 5. After install

To check the JIRA host: http://{{ hostname }}:{{ jira_http_port }}

Example:
```
http://172.29.94.49:8080
```

#!/bin/bash

yum install ansible python3.11-pip.noarch -y &>>/opt/userdata.log

ansible-pull -i localhost, -U https://github.com/Prasanthreddy4a5/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log


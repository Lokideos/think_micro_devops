#!/bin/bash

# Deploy ElasticStack
ansible-playbook elastic.yml
ansible-playbook kibana.yml
ansible-playbook logstash.yml
ansible-playbook filebeat.yml
ansible-playbook kibana_dashboards.yml
ansible-playbook kibana_dashboards.yml

# Deploy Database
ansible-playbook postgresql.yml

# Deploy Message Broker
ansible-playbook rabbitmq.yml

# Deploy Docker deps
ansible-playbook docker.yml

# Setup
ansibel-playbook setup.yml
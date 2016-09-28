#!/bin/bash

#Create host with name "Agenthost51" into Zabbix-server

host_ip=$(hostname -I | awk '{print $2}')

host_hash=$(curl -i -X POST -H 'Content-Type: application/json-rpc' -d '{"jsonrpc": "2.0", "method": "user.login", "params": { "user": "Admin", "password": "zabbix"}, "id": 1}' http://192.168.30.50/api_jsonrpc.php | sed -n 's/.*result":"\(.*\)",.*/\1/p')

curl -i -X POST -H 'Content-Type: application/json-rpc' -d "{\"jsonrpc\":\"2.0\",\"method\":\"host.create\",\"params\":{\"host\":\"Agenthost51\",\"interfaces\":[{\"type\":1,\"main\":1,\"ip\":\"$host_ip\",\"dns\":\"192.168.30.1\",\"port\":10050,\"useip\":1}],\"groups\":[{\"groupid\":2}],\"templates\":[{\"templateid\":10107}]},\"auth\":\"$host_hash\",\"id\":1}" http://192.168.30.50/api_jsonrpc.php

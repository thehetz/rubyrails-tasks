#!/bin/bash
ip=$(ip route get 8.8.8.8 | awk 'NR==1 {print $NF}')
az login --service-principal -u $APP_ID -p $APP_PASS --tenant microsoft.onmicrosoft.com
az mysql server firewall-rule create --resource-group MdLiveMySQl-RG --server-name mdlivemysql --name AgentRule --start-ip-address $ip --end-ip-address $ip

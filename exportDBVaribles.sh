ip=$(ip route get 8.8.8.8 | awk 'NR==1 {print $NF}')
export AGENT_IP=$ip

az mysql server firewall-rule create --resource-group MdLiveMySQl-RG --server-name mdlivemysql --name AgentRule --start-ip-address $AGENT_IP--end-ip-address $AGENT_IP

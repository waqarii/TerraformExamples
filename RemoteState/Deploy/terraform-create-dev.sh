#!/bin/bash
export RED='\033[0;31m'
export YELLOW='\033[1;33m'
export GREEN='\033[0;32m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export NC='\033[0m' # No Color

clear


export subscription_id="<SubscriptionID>"
export tenant_id="<tenantID>"



az login -t $tenant_id
echo -e "${CYAN}[az account set], for working subscription: $subscription_id${NC}"
az account set --subscription $subscription_id
echo -e "${CYAN}[az account show], verify the current working subscription${NC}"
az account show 

echo -e "\n\r${BLUE}TERRAFORM INIT - press enter to continue ...${NC}"
read varinput

terraform init -backend-config=devbackend.config -upgrade

echo -e "\n\r${BLUE}TERRAFORM APPLY...${NC}"
#read varinput

./workspace.sh $1

echo -e "\n\r${BLUE}TERRAFORM APPLY...${NC}"
#read varinput
terraform apply
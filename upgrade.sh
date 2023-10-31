#!/bin/bash

start_upgrade() {
    ansible-playbook -i config/inventory playbooks/main.yaml
    if [ $? -ne 0 ]; then
        echo "Check the input file or directory name"
        exit 1
    # else
    #     ansible-playbook -i config/inventory playbooks/hdb.yaml
    #     if [ $? -ne 0 ]; then
    #         echo "Failed to start the HDB database"
    #         exit 1
    #     else
    #         ansible-playbook -i config/inventory playbooks/services.yaml
    #         if [ $? -ne 0 ]; then
    #             echo "Failed to start the stopped services"
    #             exit 1
    #         else
    #             echo "..."
    #         fi
    #     fi
    fi
    echo "Kernel is upgraded on target machine"
}
start_upgrade

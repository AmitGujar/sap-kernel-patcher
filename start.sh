#!/bin/bash
echo "Please select an option:"
echo "1. Upgrade the kernel"
echo "2. Run query on HDB database"
echo "3. Start the stopped services"
read -p "What would you like to do = " choice

user_choice() {
    case $choice in
    "1")
        echo "You have selected to upgrade the kernel"
        ansible-playbook playbooks/main.yaml
        error_handler "Check the input file or directory name"
        ;;
    "2")
        echo "You have selected to run query on HDB database"
        ansible-playbook playbooks/queryplay.yml
        error_handler "Failed to start the HDB database"
        ;;
    "3")
        echo "You have selected to start the stopped services"
        ansible-playbook playbooks/services.yaml
        error_handler "Failed to start the stopped services"
        ;;
    *)
        echo "Invalid choice, Only numbers are accepted"
        ;;
    esac
}

# start_upgrade() {
#     ansible-playbook -i config/inventory playbooks/main.yaml
#     if [ $? -ne 0 ]; then
#         echo "Check the input file or directory name"
#         exit 1
#     else
#         ansible-playbook -i config/inventory playbooks/hdb.yaml
#         if [ $? -ne 0 ]; then
#             echo "Failed to start the HDB database"
#             exit 1
#         else
#             ansible-playbook -i config/inventory playbooks/services.yaml
#             if [ $? -ne 0 ]; then
#                 echo "Failed to start the stopped services"
#                 exit 1
#             else
#                 echo "..."
#             fi
#         fi
#     fi
#     echo "Kernel is upgraded on target machine"
# }
# start_upgrade

error_handler() {
    if [ $? -ne 0 ]; then
        echo $1
        exit 1
    fi
}

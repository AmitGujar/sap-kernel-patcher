#!/bin/bash

set_alert() {

    curl -d "$1" ntfy.sh/cust0m_4nsible_9layb00k_Aler7
}

check_server() {
    echo "Checking if the remote server is UP"
    ping 52.191.26.64 -c 3

    if [ $? -ne 0 ]; then
        set_alert "Server is UP 🤩"
    else
        echo "Server is not running 😭"
    fi

}

send_ping() {
    while true; do
        check_server
        if [ $? -eq 0 ]; then
            exit 0
        fi
    done
}
send_ping

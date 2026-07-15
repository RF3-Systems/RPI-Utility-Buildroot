#!/bin/sh

set -u

PORT="$1"

process_ss() {
    grep ESTAB | grep $PORT | awk '{ print $5 }' | cut -d':' -f 1
}

get_ip() {
    ss -Hnt | process_ss
}

get_hostname() {
    ss -Hntr | process_ss
}

print_ip() {
    IP="$1"
    if [ -z "$IP" ]; then
        echo "No connection"
    else
        echo "$(get_hostname $PORT),$IP"
    fi
}

print_ip "$(get_ip $PORT)"

#!/bin/bash

# check how many command line args passed in
if [ $# -lt 1 ]; then
    echo "pls only specify one command for util :-(("
    exit 1
fi

# if boost, then enable/disable turbo boost
if [ $1 = "boost" ]; then
    if systemctl is-active --quiet disable-turbo-boost; then
        echo "ENABLING TURBO BOOST"
        systemctl stop disable-turbo-boost
    else
        echo "DISABLING TURBO BOOST"
        systemctl start disable-turbo-boost
    fi

# otherwise check for some other commands
else
    echo "not boost"
fi

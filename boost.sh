#!/bin/bash

# sudo systemctl start disable-turbo-boost
# sudo systemctl enable disable-turbo-boost

# sudo systemctl disable
# sudo systemctl stop

if systemctl is-active --quiet disable-turbo-boost; then
    echo "ENABLING TURBO BOOST"
    systemctl stop disable-turbo-boost
else
    echo "DISABLING TURBO BOOST"
    systemctl start disable-turbo-boost
fi

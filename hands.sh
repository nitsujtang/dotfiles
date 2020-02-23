#!/bin/bash

check_out=$(ps aux | grep -i xwrits)
xwrits typetime=30 breaktime=:30 +multiply +mouse &

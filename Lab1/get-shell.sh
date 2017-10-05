#!/bin/bash
grep "^$1" /etc/passwd | cut -d ":" -f 1,7 | cut -d "/" -f 1,3 --output-delimiter=""

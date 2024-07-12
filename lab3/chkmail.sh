#!/bin/bash
username=$(whoami)
echo "$username"
while true; do
     new_mail_count=`mail -H -u $username -N | wc -l`
    if [ "$new_mail_count" -gt 0 ]; then
        echo "You have $new_mail_count new mail=(s)."
    else
        echo "No new Mail."
    fi
    sleep 10
done
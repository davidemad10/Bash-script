#!/bin/bash


mail_template="/home/ibrahim/bashl3/mail"
users=$(cut -d: -f1 /etc/passwd)

for user in $users; do
    mail -s "Subject of your email" "$user" < "$mail_template"
done
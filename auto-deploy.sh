#!/usr/bin/expect

spawn echo $env(PASS)

spawn ssh root@121.199.10.110
expect "*password:"
send "$env(PASS)\r"
expect "*]#"
send "cd ~/workspace/WeJoin/\r"
expect "*]#"
send "cd ~/workspace/WeJoin/\r"
expect "*]#"
send "./auto-start.sh\r"
expect eof

#!/usr/bin/expect -f
set ip [lindex $argv 0];
set mess "LOGIN BANNER HERE"
set password "ENABLE PASSWORD HERE"

spawn telnet $ip
expect "Password:" {send "$password\r"}
expect "*#" {send "conf t\r"}
expect "*(config)#" {send "banner login 9\r"}
expect "*Enter TEXT*" {send "$mess 9\r"}
expect "*(config)#" {send "exit\r"}
expect "*#" {send "write mem\r"}
expect "*#" {send "exit\r"}
expect "*>" {send "exit\r"}

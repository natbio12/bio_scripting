#!/bin/bash
#The first thing we need to do it is set up the shebang line to specify the language of the script

#Then, we are going to set up the variables for time and date, logged users list and system uptime.

time_and_date=`date`

users=`users`

upt=`uptime | awk -F '(|,|:)+' '{print $6,$7",",$8,"hours,",$9,"minutes."}'`
#For this last variable we set it up to display the day, hour and minute

printf "Date and Time: $time_and_date \n Users: $users \n Uptime: $upt\n\n" >>System_Output.txt
#Lastly we print the variables and redirect them into a new file

#-----------------------------------------------------------------
#
#	cron
#
#-----------------------------------------------------------------

# 1. create user owned table
crontab -e

# 2. select an editor
# choice 2 = /bin/nano

# can be changed with
select-editor 

# or edit
~/.selected-editor
=> # Generated by /usr/bin/select-editor
=> SELECTED_EDITOR="/bin/nano"

# 3. create the crontab
=> crontab -e
=> then edit
=> crontab will print: crontab: installing new crontab

# order by
#	Minute	Hour 	Day 	Month 	DayOfWeek


#M   S     T M W   Command
#-----------------------------------------------------------------
5    9-20 * * *		every five minutes, every hour from 9 to 20
*/10 *    * * *   	every 10 minutes
59   23   * * 0,4 	every sunday and thursday at 23:59
*    *    * * *   	every minute
0    0    * * *   	every day at midnight
#-----------------------------------------------------------------

# crontab generator
http://www.htmlbasix.com/crontab.shtml

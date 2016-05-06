#/bin/sh
# Run the IB Gateway by passing along all of the necessary parameters  
# Syntax is:
# java -cp [java options] [IBJts directory] [username=XXX] [password=ZZZ] 
# Get the username from command-line parameter 1 (or hard code this USER=xxxxx)
USER=$1
# Get password from command-line parameter 2 (or hard code this PASS=xxxxx)
PASS=$2
# Get the current date and time (to the minute)
DATE=`date +%Y%m%d%H%M`
# Log file - make sure whatever you name this file has enough space in the folder
LOGFILE=/home/zhe/Documents/GitRepos/ibgateway/log/ibg_running_${DATE}.log
# IBJts working directory - change this to where you have the IB Gateway installed
IBJTSDIR=/home/zhe/Jts/ibgateway/952/ibgateway
# Assemble the command line and run it! 
${JAVAEXE} ${JAVAOPTIONS} ${IBJTSDIR} username=${USER} password=${PASS} > ${LOGFILE} 2>&1
# Note the  2>&1  at the end of the command line re-directs standard error into the same 
# log file as standard output


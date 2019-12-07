#!/bin/bash
echo "Measuring CPU and Mem usage of process $1"
totalcpu="0.0"
totalmem="0.0"
count=0
processing=0
while true; do
	pid="$(pgrep -x $1)"
	ret=$?
	if [ $ret -eq 1 ]; then
		if [ $processing -eq 1 ]; then
			avgcpu=$(echo "$totalcpu / $count" | bc -l)
			avgmem=$(echo "$totalmem / $count" | bc -l)
			echo "Completed measurement:"
			echo "Avg CPU: $avgcpu%, avg mem: $avgmem"
			exit 0
		fi
		sleep 5
	elif [ $ret -eq 0 ]; then
		echo "Process $1 is running, measuring stat."
		cpumem="$(ps auxwww -p $pid | awk '{print $3" "$4}' | tail -1)"
		cpu="$(echo $cpumem | awk '{print $1}')"
		mem="$(echo $cpumem | awk '{print $2}')"
		echo $cpu $mem
		totalcpu=$(echo "$totalcpu + $cpu" | bc -l)
		totalmem=$(echo "$totalmem + $mem" | bc -l)
		count=$[$count + 1]
		processing=1
		sleep 1
	else
		echo "Unexpected return code $? returned, exiting."
		exit 1
	fi
done



 #!/bin/bash

Wage_Per_Hour=20;
Working_Hour=8;
Part_Time_Hour=4; 

echo "Welcome to Employee wage computation";

isPresent=$((RANDOM%3));	#0 1 2

if [ $isPresent -eq 0 ]
then 
	echo "Employee is Absent";
elif [ $isPresent -eq 1 ]
then
	echo "Employee is Present";
	dailyWage=$(($Wage_Per_Hour * $Working_Hour));
	echo "PreDay Daily Wage is : "$dailyWage;
else
	echo "Employee is working as part time";
	dWage=$(($Wage_Per_Hour * $Part_Time_Hour));
	echo "Part time daily Wage is : "$dWage;
fi
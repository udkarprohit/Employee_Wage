 #!/bin/bash

Wage_Per_Hour=20;
Working_Hour=8;

echo "Welcome to Employee wage computation";

isPresent=$((RANDOM%2));

if [ $isPresent -eq 0 ]
then 
	echo "Employee is Absent";
elif [ $isPresent -eq 1 ]
then
	echo "Employee is Present";
	dailyWage=$(($Wage_Per_Hour * $Working_Hour));
	echo "PreDay Daily Wage is : "$dailyWage;
fi
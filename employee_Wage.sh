 #!/bin/bashs


totalWage=0;
Wage_Per_Hour=20;
Working_Hour=0;
totalHour=0;
day=1;
#Part_Time_Hour=4; 
while [[ $day -le 20 && $totalHour -lt 100 ]]
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
			#echo "Employee is Absent";
			Working_Hour=0;
		;;
	
		1)
			#echo "Employee is Present";
			Working_Hour=8;
		;;
	
		2)
			#echo "Employee is working as part time";
			Working_Hour=4;
		;;
	esac
	totalHour=$(($totalHour + $Working_Hour));
	if [ $totalHour -gt 100 ]
	then
		totalHour=$(($totalHour - $Working_Hour));
		break;
	fi
	dailyWage=$(($Wage_Per_Hour * $Working_Hour));
	totalSalary=$(($totalSalary + $dailyWage));
	#echo "Employee Daily Wage is : " $dailyWage;
	((day++));
done

echo "Employee Monthly Wage is : "$totalSalary;
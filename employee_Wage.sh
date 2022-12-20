 #!/bin/bashs

isPresent=$((RANDOM%3));
Wage_Per_Hour=20;
Working_Hour=0;
#Part_Time_Hour=4; 

case $isPresent in
	0)
		echo "Employee is Absent";
		Working_Hour=0;
	;;
	
	1)
		echo "Employee is Present";
		Working_Hour=8;
	;;
	
	2)
		echo "Employee is working as part time";
		Working_Hour=4;
	;;
esac

dailyWage=$(($Wage_Per_Hour * $Working_Hour));

echo "Employee Daily Wage is : " $dailyWage;
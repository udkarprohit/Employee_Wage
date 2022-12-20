 #!/bin/bash
echo "Welcome to Employee wage computation";

isPresent=$((RANDOM%2));

if [ $isPresent -eq 0 ]
then 
	echo "Employee is Absent";
elif [ $isPresent -eq 1 ]
then
	echo "Employee is Present";
fi
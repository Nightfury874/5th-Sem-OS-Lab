# 1912160_L01Q09.sh

# Q.9. Write a shell script that accepts a file name, starting and ending line numbers as arguments and display all the lines between the given line numbers.

# $nano L01Q09.sh

echo "Enter File Name: "
read fileName
echo "Enter Starting Line Number: "
read Start
echo "Enter Ending Line Number: "
read End
if [ ! -f $fileName ]
then
	echo "File Not Found!"
else
	if [ ! $Start -lt $End ]
	then
		echo "Faulty Entry of line numbers"
	else
		echo "Lines in between line numbers "$Start "and "$End "are: "
		sed -n $Start,$End\p $fileName
	fi
fi

# $chmod +x L01Q09.sh
# $./L01Q09.sh

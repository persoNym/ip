

#description	verication bash program
#author		Victoria Croffie
#created	4/10/13
#last updated	4/15/13


echo "date accessed:"

# shows today's date

date

# pauses for 2 seconds

sleep 2

#set the argument to a variable ip

ip=$1

# Check the ip address argument to see if there's correct number of digits

if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]

    then

# Record current default field separator which is currently space

    OIFS=$IFS

# Set default field separator to . to separate between the number blocks in the address

    IFS='.'

# Create an array of ip and with IFS the . will mark the array indexes

    ip=($ip)

# nested statement to check that it's between the right range of  0 and 255?

	if [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]

		then

		echo "Valid IP address"

			else

			echo "Invalid IP address: numbers are not within the proper range"

	fi

      else

      echo "Invalid IP address: address is not the propper length and/or format"

fi


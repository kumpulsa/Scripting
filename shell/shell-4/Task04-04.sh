# Task04-04
# Create a script that has a function called network_information that shows the following information:
# ip address:
# hostname:
# Log the messages in the syslog with a custom tag "network-information".
# Hints: Utilize arrays and ip or hostname commands with options

#how to get IP address
#hostname -I
network_information(){

  Ip=$(hostname -I)
  #echo $Ip

  hostname=$(hostname)
  #echo $hostname

  echo $Ip
  echo $hostname

  logger -t "network-information"  "Ip address:${Ip} hostname:${hostname}"
}

network_information
tail /var/log/syslog

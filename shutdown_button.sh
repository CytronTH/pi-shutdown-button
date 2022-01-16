#! /bin/sh

case "$1" in
start)
echo "Starting shutdown process"
/usr/local/bin/shutdown_button.py &
;;
stop)
echo "Stopping shutdown process"
pkill -f /usr/local/bin/shutdown_button.py
;;
*)
echo "Usage: /etc/init.d/shutdown_button.sh {start|stop}"
exit 1
;;
esac

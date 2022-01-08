# variety
# Terminate already running bar instances
killall -q variety
## Wait until the processes have been shut down
while pgrep -u $UID -x variety >/dev/null; do sleep 1; done

##Lanunc Variety
variety

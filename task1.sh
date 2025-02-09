echo "Run infinite.sh"
sh infinite.sh


echo "\nFind Process ID:"
PID=$(ps | grep -E 'infinite.sh' | grep -v grep | awk '{print $1}')
echo "$PID"

echo "\nKill infinite.sh with its PID, Processing Complete."
kill -9 $PID


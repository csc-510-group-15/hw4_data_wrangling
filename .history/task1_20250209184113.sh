echo "Run infinite.sh:"
sh infinite.sh


echo "\nFind Process ID:"
PID=$(ps | grep 'infinite.sh' | grep -v grep | awk '{print $1}')

echo "\nKill infinite.sh with its PID:"
kill -9 $PID


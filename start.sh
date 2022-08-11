export PATH=$PATH:/root/.nvm/versions/node/v18.7.0/bin;

PID=$(awk -F'LISTEN |/' '{print $2}' <<< "$(netstat -ltnp | egrep ':::3000')" | sed 's/\s//g')
echo "detected pid running on :::3000 --> ${PID}"

if [ ! -z "$PID" ]; then
        echo "killing the running process with PID ${PID}"
        echo $(kill $PID)
fi

echo "restart the wiki server"
/var/www/wiki.faridevnz.me/node_modules/yarn/bin/yarn next > /var/www/wiki.faridevnz.me/logs/info.log 2> /var/www/wiki.faridevnz.me/logs/error.log &
echo "PATH --> "
echo $PATH

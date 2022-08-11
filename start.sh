PORT=$(awk -F'LISTEN |/' '{print $2}' <<< "$(netstat -ltnp | egrep ':::3000')" | sed 's/\s//g')

if [ ! -z "$PORT" ]; then
        kill $PORT
fi

./node_modules/yarn/bin/yarn next > /dev/null 2>&1 &
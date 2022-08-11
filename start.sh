PORT=$(awk -F'LISTEN |/' '{print $2}' <<< "$(netstat -ltnp | egrep ':::3000')" | sed 's/\s//g')

if [ ! -z "$PORT" ]; then
        kill $PORT
fi

npm run start > /dev/null 2>&1 &
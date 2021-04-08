function checkRequiredInputs (){

    if [ -z $NGINX_PORT ];
    then
        echo;
        echo "Need to set NGINX_PORT varialbe eg.";
        echo;
        exit -1;
    else
        echo "NGINX_PORT="$NGINX_PORT
    fi

    if [ -z $DATA_PROTOCOL ];
    then
        echo;
        echo "Need to set DATA_PROTOCOL varialbe eg.";
        echo;
        exit -1;
    else
        echo "DATA_PROTOCOL="$DATA_PROTOCOL
    fi

    if [ -z $DATA_SERVER ];
    then
        echo;
        echo "Need to set DATA_SERVER varialbe eg.";
        echo;
        exit -1;
    else
        echo "DATA_SERVER="$DATA_SERVER
    fi
}

echo $NGINX_PORT $DATA_SERVER

cat ./nginx/nginx_template.template | envsubst '${NGINX_PORT}${DATA_PROTOCOL}${DATA_SERVER}' > ./nginx/nginx.conf

cat ./nginx/nginx.conf


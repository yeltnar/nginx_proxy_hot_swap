function checkRequiredInputs (){

    if [ -z $container_ref ];
    then
        echo;
        echo "Need to set container_ref varialbe";
        echo;
        exit -1;
    else
        echo "container_ref="$container_ref
    fi
}

checkRequiredInputs

# http://bafybeifxla5cjtzcwfdwn2nsqid7xurhbkpfexe4xczd4fiahj5ytrxazq.ipfs.localhost:8080/

docker cp $(pwd)/nginx/nginx.conf $container_ref:/etc/nginx/nginx.conf
docker exec $container_ref service nginx reload

# docker exec $container_ref ...
# service nginx reload 
# or 
# /etc/init.d/nginx reload
export NGINX_PORT=3000
export DATA_PROTOCOL=https://
export DATA_SERVER=bafybeifxla5cjtzcwfdwn2nsqid7xurhbkpfexe4xczd4fiahj5ytrxazq.ipfs.dweb.link

export container_ref=nginx_to_hot_reload

. ./update_nginx_conf.sh
. ./copy_to_container.sh
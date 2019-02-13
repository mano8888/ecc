#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.play$i container.."
    sleep 1
   sudo docker run --name www.play$i -d -it --rm nageshvkn/node3 /bin/bash
    echo "www.play$i container has been created!"
	echo "=============================="
done

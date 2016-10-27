#!/bin/bash
# remember to edit server to host on 0.0.0.0, or at least not 127.0.0.1
#useradd $local_user

#USER_ID=$(id -u)
#USER_ID=${LOCAL_USER_ID:-9001}

echo "User: $local_user"
echo "UserID: $local_user_id"
useradd --shell /bin/bash \
	--non-unique \
	--comment "" \
	--create-home $("/home/$local_user") \
	-u $local_user_id \
 	$local_user
export HOME=/home/$local_user

cd /dock/bolt
exec /usr/local/bin/gosu $local_user "/usr/local/bin/dub"

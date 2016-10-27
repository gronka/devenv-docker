#!/bin/sh
# remember to edit server to host on 0.0.0.0, or at least not 127.0.0.1
useradd $local_user
cd /dock/newtest
su taylor -c 'dub run'

echo "External url http://"$(ifconfig en0| grep "inet[ ]" | awk '{print $2}')":8888"
echo "Get the token when start jupyter\n"
echo "Running jupyter in http://127.0.0.1:8888"
docker-compose -f docker-compose-normal-mode.yml up

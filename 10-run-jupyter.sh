echo "External url http://"$(ifconfig en0| grep "inet[ ]" | awk '{print $2}')":8888"
echo "Get the token when start jupyter\n"
echo "Running jupyter in http://127.0.0.1:8888"
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD"/work:/home/jovyan/work -v "$PWD"/examples:/home/jovyan/examples jupyter-mike

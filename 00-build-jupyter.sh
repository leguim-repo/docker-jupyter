mkdir work
docker build -f $(pwd)/Dockerfile -t jupyter-mike .
#printf "UID=$(id -u)\nGID=$(id -g)\n" > .env
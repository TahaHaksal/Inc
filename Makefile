DATA_DIR = /home/mhaksal/data

all: dir
	cd srcs && docker-compose up -d --build
re: fclean dir
	cd srcs && docker-compose up -d --build
clean:
	cd srcs && docker-compose down --remove-orphans -v
fclean:
	cd ${HOME}/data && sudo rm -rf *
	cd srcs && docker system prune -af
	cd srcs && docker container prune -f
	cd srcs && docker image prune -af
dir:
	sudo mkdir -p ${HOME}/mhaksal/data

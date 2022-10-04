include srcs/.env
export srcs/.env

all: purge make

make:
	docker-compose -f srcs/docker-compose.yml up --build

purge:
	docker system prune -a

stop:
	docker ps -aq | xargs docker stop
	docker ps -aq | xargs docker rm
	docker images -aq | xargs docker rmi
	rm -rf ~/data/datab/* ~/data/wordpress/*

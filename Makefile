include srcs/.env

export srcs/.env
export DB_NAME=wordpress
export DB_USER=samsql
export DB_PASS=1234
export DB_ADMIN_USER=yep
export DB_ADMIN_PASS=0987
export DB_HOST=nferre.42.fr
export DOMAINNAME=localhost


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

include srcs/.env
export srcs/.env


all: purge make

make:
	cd srcs && docker-compose -f docker-compose.yml up --build && cd ..

purge:
	docker system prune -a

stop:
	docker ps -aq | xargs docker stop
	docker ps -aq | xargs docker rm
	docker images -aq | xargs docker rmi
	rm -rf ~/data/datab/* ~/data/wordpress/*

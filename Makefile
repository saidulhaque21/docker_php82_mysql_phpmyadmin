# make run - command perform build at first and after that up the container 
run:
	@make build
	@make up
# make build - build the container 
build:
	docker-compose build --no-cache --force-rm
# make up - up the container 
up:
	docker-compose up -d 
# make down - down the container 
down: 
	docker-compose down
DIR = ./srcs/docker-compose.yml

all: build

up:
	docker-compose -f $(DIR) up -d

build:
	sudo sed -i 's/localhost/marcrodr.42.fr/g' /etc/hosts
	docker-compose -f $(DIR) up -d --build

down:
	docker-compose -f $(DIR) down

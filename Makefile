DIR = ./srcs/docker-compose.yml

all: build

up:
	docker-compose -f $(DIR) up -d

build:
	sudo sed -i 's/localhost/marcrodr.42.fr/g' /etc/hosts
	sudo mkdir -p /home/marcrodr/data/wordpress
	sudo mkdir -p /home/marcrodr/data/mariadb
	docker-compose -f $(DIR) up -d --build

down:
	docker-compose -f $(DIR) down

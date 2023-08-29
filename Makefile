DIR = ./srcs/docker-compose.yml

all: build

up:
	docker-compose -f $(DIR) up -d

build: setup
	docker-compose -f $(DIR) up -d --build

setup:
	sudo sed -i 's/localhost/marcrodr.42.fr/g' /etc/hosts
	sudo mkdir -p /home/marcrodr/data/wordpress
	sudo mkdir -p /home/marcrodr/data/mariadb

down:
	docker-compose -f $(DIR) down

clean: down
	docker system prune -f

fclean: clean
	sudo rm -rf /home/marcrodr/
	sudo sed -i 's/marcrodr.42.fr/localhost/g' /etc/hosts

re: fclean all

.PHONY: all build down re clean fclean

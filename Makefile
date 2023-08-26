DOCKER_COMPOSE = docker-compose

FLAGS = -f

DIR = ./srcs/docker-compose.yml

up:
	sudo sed -i 's/localhost/marcrodr.42.fr/g' /etc/hosts
	$(DOCKER_COMPOSE) $(FLAGS) $(DIR) up --build

down:
	$(DOCKER_COMPOSE) $(FLAGS) $(DIR) down

DOCKER_COMPOSE = docker-compose

FLAGS = -f

DIR = ./srcs/docker-compose.yml

up:
	$(DOCKER_COMPOSE) $(FLAGS) $(DIR) up --build
down:
	$(DOCKER_COMPOSE) $(FLAGS) $(DIR) down

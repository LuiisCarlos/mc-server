#!/bin/bash

## Windows
start:   ## Start the containers ##
	docker-compose up -d --build

stop:    ## Stop the containers ##
	docker-compose stop

down:    ## Down the containers ##
	docker-compose -f docker-compose.yml down

restart: ## Restart the containers ##
	make stop && @make start

build:   ## Rebuilds all the containers ##
	docker-compose build

console: ## Bash into server console container ##
	docker-compose run --rm rcon

deploy:  ## Makes the server public with a free domain ##
	ngrok tcp 25565

list:    ## Reads this makefile for command info ##
	type .\makefile

# Unix Systems (Linux/macOS)
# start:   ## Start the containers ##
# 	docker compose up -d --build
#
# stop:    ## Stop the containers ##
# 	docker compose stop
#
# down:    ## Down the containers ##
# 	docker compose -f docker-compose.yml down
#
# restart: ## Restart the containers ##
# 	make stop && make start
#
# build:   ## Rebuilds all the containers ##
# 	docker compose build
#
# console: ## Bash into server console container ##
# 	docker compose run --rm rcon
#
# deploy:  ## Makes the server public with a free domain ##
# 	ngrok tcp 25565
#
# list:    ## Reads this makefile for command info ##
# 	cat makefile
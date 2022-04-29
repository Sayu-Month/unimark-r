build:
	docker-compose build
up:
	docker-compose up
up-build:
	docker-compose up --build

front-ash:
	docker-compose run frontend ash
back-bash:
	docker-compose run backend bash
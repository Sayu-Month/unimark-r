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

front-lint:
	docker-compose run --rm frontend ash -c 'cd unimark && npm run lint'
front-lint-fix:
	docker-compose run --rm frontend ash -c 'cd unimark && npm run lint:fix'
front-format:
	docker-compose run --rm frontend ash -c 'cd unimark && npm run format'
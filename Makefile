build:
	docker-compose build
up:
	docker-compose up
up-build:
	docker-compose up --build
setup:
	cp .env_sample .env
	docker-compose build
	docker-compose run --rm frontend ash -c 'npm install && cd unimark && npm install'

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

backend-fmt-check:
	docker-compose run --rm backend cargo fmt --all -- --check
backend-fmt:
	docker-compose run --rm backend cargo fmt
backend-clippy-check:
	docker-compose run --rm backend cargo clippy --all-targets --all-features -- -D warnings
backend-clippy:
	docker-compose run --rm backend cargo clippy
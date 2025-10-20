

### Article
- [What is the purpose of .PHONY in a Makefile?](https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile)
- [GNU `make` `.PHONY`](https://www.gnu.org/software/make/manual/make.html#Phony-Targets)
- [Makefile Mastery: Unlocking Efficient Bulid Automation](https://readmedium.com/en/makefile-mastery-unlocking-efficient-build-automation-d6e4f2781ea6)



### Useful Tip Examples
```
# these will speed up builds, for docker-compose >= 1.25
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

all: down build up test

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

test: up
	docker-compose run --rm --no-deps --entrypoint=pytest api /tests/unit /tests/integration /tests/e2e

unit-tests:
	docker-compose run --rm --no-deps --entrypoint=pytest api /tests/unit

integration-tests: up
	docker-compose run --rm --no-deps --entrypoint=pytest api /tests/integration

e2e-tests: up
	docker-compose run --rm --no-deps --entrypoint=pytest api /tests/e2e

logs:
	docker-compose logs --tail=25 api redis_pubsub

black:
	black -l 86 $$(find * -name '*.py')
```


```
.PHONY: dev dev-backend dev-frontend build setup web

setup:
	cd web && pnpm install

# Development
dev:
	@trap 'kill $$(jobs -p)' EXIT; \
	make dev-backend & \
	make dev-frontend & \
	wait

dev-backend:
	go run . --serve --web

dev-frontend:
	cd web && pnpm run dev

# Building
build:
	cd web && pnpm run build
	find app/dist -mindepth 1 -not -name '.gitignore' -delete
	cp -r web/build/client/* app/dist/
	go build -o reminder .

# Build web app
web:
	cd web && pnpm run build
	find app/dist -mindepth 1 -not -name '.gitignore' -delete
	cp -r web/build/client/* app/dist/
```

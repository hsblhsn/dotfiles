#!/bin/bash
if ! command_exists docker; then
	return 0
fi

postgres() {
	local PG_USER="${PG_USER:-postgres}"
	local PG_PASS="${PG_PASS:-postgres}"
	local PG_DB="${PG_DB:-postgres}"
	local PG_PORT="${PG_PORT:-5432}"
	local PG_DOCKER_NAME="${PG_DOCKER_NAME:-postgres}"
	docker run --rm -d \
		--name "${PG_DOCKER_NAME}" \
		-e POSTGRES_USER="${PG_USER}" \
		-e POSTGRES_PASSWORD="${PG_PASS}" \
		-e POSTGRES_DB="${PG_DB}" \
		-p 127.0.0.1:"${PG_PORT}":5432 \
		-v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres
}

redis() {
	local REDIS_DOCKER_NAME="${REDIS_DOCKER_NAME:-redis}"
	docker run --rm -d \
		--name "${REDIS_DOCKER_NAME}" \
		-p 127.0.0.1:6379:6379 \
		-v $HOME/docker/volumes/redis:/data redis
}

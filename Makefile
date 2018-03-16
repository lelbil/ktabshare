populate_db:
	@docker-compose exec api node scripts/populate_books.js

restart:
	@make quit
	@docker-compose up -d --build

start:
	@docker-compose up -d --build

setup:
	@make start
	@make populate_db

quit:
	@docker-compose stop
	@docker-compose rm -f
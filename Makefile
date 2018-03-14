populate_db:
	@docker-compose exec api node scripts/populate_books.js

restart:
	@docker-compose stop
	@docker-compose rm -f
	@docker-compose up -d --build

start:
	@docker-compose up -d --build

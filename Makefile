DSN="postgresql://db:db@localhost:5445/db?sslmode=disable"

g-up:
	goose -dir ./migrations postgres $(DSN) up

g-down:
	goose -dir ./migrations postgres $(DSN) down
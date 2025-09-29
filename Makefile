DB   ?= library
USER ?= root
PASS ?=
HOST ?= 127.0.0.1

mysql_cmd = mysql -h $(HOST) -u $(USER) $(if $(PASS),-p$(PASS),) $(DB)

schema:
	@$(mysql_cmd) < sql/schema.sql

seed:
	@$(mysql_cmd) < sql/seed.sql

reports:
	@$(mysql_cmd) < sql/reports.sql

all: schema seed

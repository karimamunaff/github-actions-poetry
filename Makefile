POETRY_VERSION = 1.4.0

.make/install-poetry:
	@pipx install poetry==$(POETRY_VERSION) --force
	@touch $@

setup-project:
	mkdir -p .make
	$(MAKE) .make/install-poetry
	poetry install

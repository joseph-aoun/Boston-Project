install:
	python3 -m venv $(VENV)
	./$(VENV)/bin/pip install -r requirements.txt
install:
	python3 -m venv $(VENV)
	./$(VENV)/bin/pip install -r requirements.txt
	gdown --folder https://drive.google.com/drive/folders/19DqIJCp8-4ZRq8dY3uqzIVpVTMs_Ej46

install:
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt
	./venv/bin/gdown --folder https://drive.google.com/drive/folders/19DqIJCp8-4ZRq8dY3uqzIVpVTMs_Ej46
run:
	./venv/bin/jupyter nbconvert --to notebook --execute final_project.ipynb --output output.ipynb

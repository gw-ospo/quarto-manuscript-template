
# SETUP STUFF

conda:
	conda create -n quarto-env python=3.10
	conda activate quarto-env

pip:
	pip install -r docs/requirements.txt


# QUARTO STUFF

preview:
	quarto preview docs/

render:
	quarto render docs/

build:
	quarto render docs/
	open docs/_build/index.html

open:
	open docs/_build/index.html

open-pdf:
	open docs/_build/index.pdf

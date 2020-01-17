while true
do

read -p "
Enter a number to build a project:
___________________________________________________________________
1 - Static website (HTML, CSS, JS)
2 - Static website + jQuery
3 - Static website + Bootstrap (includes jQuery as default)
4 - Basic Python application + virtual environment
5 - Flask application + virtual environment
6 - Flask application + Bootstrap (includes jQuery as default)
7 - Django application + virtual environment
___________________________________________________________________
- " choice

clear

create_gitignore () {
cat << 'EOF' > .gitignore 
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
pip-wheel-metadata/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/

# Translations
*.mo
*.pot

# Django stuff:
*.log
local_settings.py
db.sqlite3
db.sqlite3-journal

# Flask stuff:
instance/
.webassets-cache

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/

# PyBuilder
target/

# Jupyter Notebook
.ipynb_checkpoints

# IPython
profile_default/
ipython_config.py

# pyenv
.python-version

# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don't work, or not
#   install all needed dependencies.
#Pipfile.lock

# PEP 582; used by e.g. github.com/David-OConnor/pyflow
__pypackages__/

# Celery stuff
celerybeat-schedule
celerybeat.pid

# SageMath parsed files
*.sage.py

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# Spyder project settings
.spyderproject
.spyproject

# Rope project settings
.ropeproject

# mkdocs documentation
/site

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/
EOF
}



create_static () {
echo -ne " ______________________________________________
|                                              |
|          STATIC WEB PROJECT CREATOR!         |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Create blank .gitignore file               |
| - Build HTML, CSS and Javascript templates   |
| - Open project folder and index.html         |
|                                              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."
echo .
echo .
echo .

mkdir $project_name
cd $project_name

cat << 'EOF' > index.html
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="style.css">
	<title>New web project</title>
</head>

<body>

	<h1>Hello world!</h1>

	<script src="scripts.js"></script>
</body>
</html>
EOF

touch style.css
touch script.js
touch .gitignore

start .
start index.html
}



create_static_jquery () {
echo -ne " ______________________________________________
|                                              |
|          STATIC WEB PROJECT CREATOR!         |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Create blank .gitignore file               |
| - Build HTML, CSS and Javascript templates   |
| - Add jQuery library                         |
| - Open project folder and index.html         |
|                                              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."
echo .
echo .
echo .

mkdir $project_name
cd $project_name

# Create basic HTML template file:
cat << 'EOF' > index.html
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="style.css">
	<title>New web project</title>
</head>

<body>

	<h1>Hello world!</h1>

	<script src="scripts.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>
</html>
EOF

touch style.css
touch script.js
touch .gitignore

start .
start index.html
}



create_static_bootstrap () {
echo -ne " ______________________________________________
|                                              |
|          STATIC WEB PROJECT CREATOR!         |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Create blank .gitignore file               |
| - Build HTML, CSS and Javascript templates   |
| - Add Bootstrap & jQuery libraries           |
| - Open project folder and index.html         |
|                                              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."
echo .
echo .
echo .

mkdir $project_name
cd $project_name

# Create basic HTML template file:
cat << 'EOF' > index.html
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="style.css">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename='style.css') }}">
	<title>New web project</title>
</head>

<body>

	<h1>Hello world!</h1>

	<script src="scripts.js"></script>
	<!-- jQuery Slim, Popper.js, Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
EOF

touch style.css
touch script.js
touch .gitignore

start .
start index.html
}



create_python () {
echo -ne " ______________________________________________
|                                              |
|            PYTHON PROJECT CREATOR!           |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Build virtual environment                  |
| - Create requirements.txt & .gitignore       |
| - Create primary Python file		           |
|                                              |
| - Requirements: PIP, VIRTUALENV              |
|   (will be installed if absent)              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."

# Checking dependencies to set up project
python get-pip.py
python -m pip install virtualenv

mkdir $project_name
cd $project_name
virtualenv $project_name

pip freeze --local > requirements.txt
touch $project_name.py

# Create GitHub .gitignore for Python projects:
create_gitignore

source $project_name/scripts/activate
start .
}



create_flask () {
echo -ne " ______________________________________________
|                                              |
|            FLASK PROJECT CREATOR!            |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Build virtual environment                  |
| - Create requirements.txt & .gitignore       |
| - Build .py, .html and .css templates        |
| - Initialise project on localhost            |
|                                              |
| - Requirements: PIP, VIRTUALENV              |
|   (will be installed if absent)              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."

# Checking dependencies to set up project
python get-pip.py
python -m pip install virtualenv

mkdir $project_name
cd $project_name
virtualenv $project_name
python -m pip install flask

pip freeze --local > requirements.txt
touch $project_name.py

# Create primary Python project launcher file:
cat << 'EOF' > $project_name.py
import requests
from flask import Flask, render_template, url_for

app = Flask(__name__)

@app.route("/")
def root():
	return render_template('index.html')
EOF

# Create GitHub .gitignore for Python projects:
create_gitignore

mkdir templates
mkdir static
cd templates

# Create basic HTML template file:
cat << 'EOF' > index.html
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename='style.css') }}">
	<link rel="stylesheet" href="">
	<title>New Flask Project</title>
</head>

<body>

	<h1>Hello world!</h1>

</body>
</html>
EOF

cd ..
cd static
touch style.css
cd ..

source $project_name/scripts/activate
start .

FLASK_APP=$project_name.py FLASK_ENV=development flask run
}



create_flask_bootstrap () {
echo -ne " ______________________________________________
|                                              |
|            FLASK PROJECT CREATOR!            |
|______________________________________________|
|                                              |
|                    TODO:                     |
|                                              |
| - Create project directory                   |
| - Build virtual environment                  |
| - Create requirements.txt & .gitignore       |
| - Build .py, .html and .css templates        |
| - Initialise project on localhost            |
|                                              |
| - Requirements: PIP, VIRTUALENV              |
|   (will be installed if absent)              |
|______________________________________________|
|                                              |
|      Please enter your new project name      |
|     No whitespace! snake_case recommended    |
|______________________________________________|
|
| - Project Name:
| - "

read project_name
echo "Setting up new project..."

# Checking dependencies to set up project
python get-pip.py
python -m pip install virtualenv

mkdir $project_name
cd $project_name
virtualenv $project_name
python -m pip install flask

pip freeze --local > requirements.txt
touch $project_name.py

# Create primary Python project launcher file:
cat << 'EOF' > $project_name.py
import requests
from flask import Flask, render_template, url_for

app = Flask(__name__)

@app.route("/")
def root():
	return render_template('index.html')
EOF

# Create GitHub .gitignore for Python projects:
create_gitignore

mkdir templates
mkdir static
cd templates

# Create basic HTML template file:
cat << 'EOF' > index.html
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="style.css">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename='style.css') }}">
	<title>New web project</title>
</head>

<body>

	<h1>Hello world!</h1>

	<script src="scripts.js"></script>
	<!-- jQuery Slim, Popper.js, Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
EOF

cd ..
cd static
touch style.css
cd ..

source $project_name/scripts/activate
start .

FLASK_APP=$project_name.py FLASK_ENV=development flask run
}



create_django () {
	pass
}


exit () {
	exit
}



######################################################################################
######################################################################################
######################################################################################
######################################################################################
######################################################################################
######################################################################################



if [ $choice == "1" ]
then
	create_static

elif [ $choice == "2" ]
then
	create_static_jquery

elif [ $choice == "3" ]
then
	create_static_bootstrap

elif [ $choice == "4" ]
then
	create_python

elif [ $choice == "5" ]
then
	create_flask

elif [ $choice == "6" ]
then
	create_flask_bootstrap

elif [ $choice == "7" ]
then
	echo -e "\nDjango is yet to be added.\nPlease try another choice!\n"
else
	echo -e "\nPlese enter a valid choice\n"
fi

done
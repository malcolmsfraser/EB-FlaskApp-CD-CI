install:
	pip install --upgrade pip&&\
		pip install -r requirements.txt
			pip install awsebcli --upgrade

test:

	
lint:
	pylint --disable=R,C application.py

init_eb:
	eb init -p python-3.7 flask-app --region us-east-1

create_eb:
	eb create flask-env
	
deploy:
	eb deploy

	
all: install lint deploy

create_all: install lint init_eb create_eb deploy
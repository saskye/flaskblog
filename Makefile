install-deps:
	(\
	yum install -y python-virtualenv;\
	)

venv:
	(\
	test -d venv || virtualenv venv;\
	venv/bin/pip install -U -r requirements.txt;\
	)


all:install-deps venv 

.PHONY: venv
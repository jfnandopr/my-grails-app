all: prepare start

prepare:
	docker build -t jfnandopr/my-grails-app -f "docker/Dockerfile" .

start:
	docker-compose -f docker-compose.yml up -d

deploy: infra-init infra-prepare-and-deploy

infra-init:
	dir=$(pwd)
	cd terraform 
	terraform init
	terraform apply
	cd $dir

infra-prepare-and-deploy:
	dir=$(pwd)
	cd ansible 
	ansible-playbook -i inventory.yaml playbook.yaml
	cd $dir

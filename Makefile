all: start

docker-build:
	docker build -t jfnandopr/my-grails-app -f "docker/Dockerfile" .

start:
	docker-compose -f docker-compose.yml up -d

deploy: infra-apply infra-prepare-and-deploy

infra-apply:
	terraform init
	terraform apply

infra-prepare-and-deploy:
	cd ansible && ansible-playbook -i inventory.yaml playbook.yaml

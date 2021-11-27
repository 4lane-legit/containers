export APP=4lane/picaxe-nginx-alpine
export DOCKER_USERNAME=4lane

.PHONY: clean build
	
build: 
	@echo "MAKE env ==========================================="
	sudo chmod 777 /var/run/docker.sock
	cat ./.dockerpass | docker login --username ${DOCKER_USERNAME} --password-stdin
	build/build.sh

clean:
	@echo "MAKE clean ==========================================="
	cicd-scripts/docker/clean-dockers.sh
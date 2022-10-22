
# target nginx: run a container (daemon mode) example with nginx image locally.
nginx:
	@docker container run -p 8080:80 --name test_nginx --rm -d nginx 

# target sh: run a sh shell inside container, based on passed name.
sh:
	@docker container exec -it $(name) sh

# target image: build an image with targe and file destination.
image: 
	@docker image build -t $(target) -f images/Dockerfile.$(target) .

push:
	@docker tag $(name) $(user)/$(name)
	@docker push $(user)/$(name)
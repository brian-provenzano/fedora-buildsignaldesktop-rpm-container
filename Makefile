

pull:
	@docker pull fedora:28
build:
	@docker build -t warpigg/fedora-signaldesktopbuilder:$(version) .
build-pull: pull
	@docker build -t warpigg/fedora-signaldesktopbuilder:$(version) .
run:
	@docker run --name=fedora-signaldesktopbuilder -v fedora_signaldesktopbuild:/root/fedora_signaldesktopbuild -d warpigg/fedora-signaldesktopbuilder:$(version)
start:
	@docker container start fedora-signaldesktopbuilder
stop:
	@docker container stop fedora-signaldesktopbuilder
show:
	@docker container ls
logs: 
	@docker logs -f fedora-signaldesktopbuilder
cli:
	@docker container exec -it -u root fedora-signaldesktopbuilder /bin/bash
clean:	stop
	@docker container rm fedora-signaldesktopbuilder


build:
	@docker build . -t youtube-dl:latest

shell:
	@docker run --volume $$PWD:/data --entrypoint sh -it youtube-dl:latest

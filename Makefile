.PHONY: all


dev:
	hugo serve -w -D --disableFastRender

css:
	hugo gen chromastyles --style=colorful > static/css/syntax.css

deploy:
	hugo --config config.toml -d ../kenpuca.github.io
	cd ../kenpuca.github.io; git add --all; git commit -m 'new'; git push -f origin master


all:
	mkdir -p ../build
	hugo -w -d ../build

.PHONY: all


dev:
	hugo serve -w -D --disableFastRender

css:
	hugo gen chromastyles --style=colorful > static/css/syntax.css

all:
	mkdir -p ../build
	hugo -w -d ../build

NAME := mmaisel
VERSION := $(shell cat VERSION)
CWD := $(shell pwd)

env:
	docker build -t mmaisel .
serve:
	docker run --rm -it -p 5000:5000 -v $(CWD):/data -w /data $(NAME):latest jekyll serve -w --port 5000 --host 0.0.0.0
new:
	docker run --rm -it -v $(CWD):/data $(NAME):latest jekyll new data/ --force

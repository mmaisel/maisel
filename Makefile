NAME := mmaisel
VERSION := $(shell cat VERSION)
CWD := $(shell pwd)

env:
	docker build -t $(NAME) .
serve:
	docker run --rm -it -p 5000:5000 -v $(CWD):/data -w /data $(NAME):latest bundle exec jekyll serve --watch --port 5000 --host 0.0.0.0 --force_polling
new:
	docker run --rm -it -v $(CWD):/data $(NAME):latest bundle exec jekyll new data/ --force

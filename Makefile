build:
	docker build -t barrywalker/kickassembler:latest .

dist: build
	docker push barrywalker/kickassembler:latest

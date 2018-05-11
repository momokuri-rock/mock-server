run:
	docker run -it \
	  -v ${PWD}:/usr/src/app \
	  -v /usr/src/app/node_modules \
	  -p 3001:3000 \
	  --rm \
	  mock-server

build:
	docker build -t mock-server .	

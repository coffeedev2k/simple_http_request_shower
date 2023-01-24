simple case with curl post request and
server, showing body of this request

client:
curl -d '{"key1":"value1", "key2":"value2"}' -H "Content-Type: application/json" -X POST http://localhost:3000/data


server js:

    build:
	    docker build . -t 'server3000'

    run:
	    docker run -p 3000:3000 server3000:latest


==========================================================================

server nginx:

    build:
        docker build . -f nginx.Dockerfile -t nginxlistener8080

    run:
        docker run -it -p 8080:8080  nginxlistener8080

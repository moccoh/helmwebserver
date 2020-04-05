FROM golang:1.13.9-alpine3.11

WORKDIR /go/src/app
COPY ./app .

RUN go get -d -v 
RUN go install -v 
RUN PATH=/go/bin:$PATH
ENTRYPOINT [ "go", "run", "server.go" ]

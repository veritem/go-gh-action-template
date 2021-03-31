FROM golang:latest

WORKDIR /src/app
COPY . .


RUN go get -v ./...
RUN go build -o main

ENTRYPOINT ["/go/src/app/main"]

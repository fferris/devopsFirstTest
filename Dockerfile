FROM golang:alpine3.14

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /if-devops-test

EXPOSE 8000

CMD [ "/if-devops-test" ]
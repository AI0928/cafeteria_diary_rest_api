FROM golang:1.19.3-buster

WORKDIR /app
COPY . /app
RUN go mod tidy
RUN go install github.com/cosmtrek/air@v1.27.3
CMD ["air"]
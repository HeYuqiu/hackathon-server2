FROM golang:alpine
WORKDIR $GOPATH/src/server2
ADD . ./
ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"
RUN go build -o server2 .
EXPOSE 8083
ENTRYPOINT  ["./server2"]
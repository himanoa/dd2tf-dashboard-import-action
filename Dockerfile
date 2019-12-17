FROM golang
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update -y && apt-get install -y go-dep
RUN git clone https://github.com/amnk/dd2tf.git $GOPATH/src/github.com/amnk/dd2tf
WORKDIR $GOPATH/src/github.com/amnk/dd2tf
RUN go get -u github.com/jteeuwen/go-bindata/...
RUN dep ensure
RUN go generate
RUN go build
ENTRYPOINT ["/entrypoint.sh"]

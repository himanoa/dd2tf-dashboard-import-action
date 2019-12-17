FROM golang
RUN apt-get update -y && apt-get install -y vim
RUN git clone https://github.com/amnk/dd2tf.git dd2tf
WORKDIR dd2tf
RUN go get -u github.com/golang/dep/
RUN dep ensure
RUN go generate
RUN go build

FROM ubuntu:14.04
MAINTAINER dev@jpillora.com
#all installs then uninstalls in one! (docker has no ability to squash commits)
RUN apt-get update && apt-get install -y curl ssh build-essential git mercurial && \
	curl -s https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar -C /usr/local -xzf - && \
	rm -rf /var/lib/apt/lists/*
#configure golang
ENV GOPATH /root/go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
#install latest godep
RUN go get github.com/tools/godep

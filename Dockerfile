FROM ubuntu:14.04
MAINTAINER dev@jpillora.com
#configure golang
ENV GOPATH /root/go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
#all installs then uninstalls in one! (docker has no ability to squash commits)
RUN apt-get update && apt-get install --no-install-recommends -y curl build-essential ca-certificates git mercurial && \
	curl -s https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar -C /usr/local -xzf - && \
	apt-get remove --purge -y curl && \
	apt-get autoremove -y && \
	rm -rf /var/lib/apt/lists/*


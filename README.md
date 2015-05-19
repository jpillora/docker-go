# docker-go

A Dockerized Go development environment

[![Docker Repository on Quay.io](https://quay.io/repository/jpillora/go/status "Docker Repository on Quay.io")](https://quay.io/repository/jpillora/go)

## Usage

``` sh
$ docker run -it --rm quay.io/jpillora/go:latest bash
root@307ef55c63ec:/#
root@307ef55c63ec:/# go get github.com/jpillora/serve
root@307ef55c63ec:/# serve
root@307ef55c63ec:/# serving . on port 3000
```

```
FROM quay.io/jpillora/go:latest
MAINTAINER dev@jpillora.com
...
```

#### MIT License

Copyright &copy; 2015 Jaime Pillora &lt;dev@jpillora.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
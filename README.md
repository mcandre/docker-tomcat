# docker-tomcat - a Docker container running a continuous Tomcat server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-tomcat/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-tomcat:latest .
docker run -d -p 8080:8080 mcandre/docker-tomcat:latest
680099c1e25b4b88fa0c751fbc748398002dace46fb953aba1a050a0ce0c1ba0
sleep 2
time curl -s http://$(docker-machine ip default):8080 | head
<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Apache Tomcat</title>
</head>

<body>
<h1>It works !</h1>

real	3m50.967s
user	0m0.046s
sys	0m0.054s
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)

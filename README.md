### Linkerd Service Mesh using Docker Compose

### Prerequisite
- Docker
- Docker Compose

### To start the setup
Clone this repo, cd to the directory and run the following command.

```
docker compose up
```

### Dtab add

```$ export NAMERD_URL=http://localhost:4180```

```
curl -v -X PUT -d "/svc/red => /$/inet/red/80; /svc/green => /$/inet/green/80" -H "Content-Type: application/dtab" -H "Content-Type: application/dtab" $NAMERD_URL/api/1/dtabs/default
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 4180 (#0)
> PUT /api/1/dtabs/default HTTP/1.1
> Host: localhost:4180
> User-Agent: curl/7.54.0
> Accept: */*
> Content-Type: application/dtab
> Content-Type: application/dtab
> Content-Length: 58
>
* upload completely sent off: 58 out of 58 bytes
< HTTP/1.1 204 No Content
<
* Connection #0 to host localhost left intact

```

### To check the request flow with host header 

```
curl http://127.0.0.1:4140/ -H 'Host: red'
Hello linkerd! I'm RED :)

curl http://127.0.0.1:4140/ -H 'Host: green'
Hello linkerd! I'm Green.
```

### Architecture

![alt text](https://github.com/ganasubrgit/l5d-n5d-zk-docker/blob/master/diagram.png)

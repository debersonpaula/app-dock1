rem build docker
docker build -t test1 .

rem show images
docker images

rem Run the image
docker run -p 49160:8080 -d test1

rem Get container ID
docker ps

rem Print app output
docker logs <container id>
docker logs 02faee1c8da3

rem Enter the container
docker exec -it <container id> /bin/bash
docker exec -it 02faee1c8da3 /bin/bash

rem Stop Container
rem docker stop [OPTIONS] CONTAINER [CONTAINER...]
docker stop 02faee1c8da3
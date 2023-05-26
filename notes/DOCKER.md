## Resources
- [Awesome Docker](https://github.com/veggiemonk/awesome-docker)
- [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)
- [Dockerized GitLab](https://github.com/sameersbn/docker-gitlab)
- [Dockerfiles](https://github.com/jessfraz/dockerfiles)
- [Automated nginx proxy for Docker containers using docker-gen](https://github.com/nginx-proxy/nginx-proxy)


## StackOverflow
- [How to start a stopped Docker container with a different command?](https://stackoverflow.com/questions/32353055/how-to-start-a-stopped-docker-container-with-a-different-command)


```
#------------------------------------------------------------------------------
# Run Dockerized PostgreSQL
#

docker pull postgres

# 3. Create a Docker container from the image by running the following command:

docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker run --name db -e POSTGRES_PASSWORD=test_db_password -d -p 5432:5432 postgres
docker ps

# 5. To connect to the PostgreSQL database, you can use a PostgreSQL client like psql.
# You can install psql on your local machine or connect to the container using another Docker container.

docker run -it --rm --link some-postgres:postgres postgres psql -h postgres -U postgres


# This command creates a new container and connects to the "some-postgres" container using the --link flag.
#------------------------------------------------------------------------------
```


```
docker ps
docker exec -it [container_id] /bin/sh
```

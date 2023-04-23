# Resources
- [Awesome Docker](https://github.com/veggiemonk/awesome-docker)
- [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)

- [Dockerized GitLab](https://github.com/sameersbn/docker-gitlab)

- [Dockerfiles](https://github.com/jessfraz/dockerfiles)


- [Automated nginx rpoxy for Docker containers using docker-gen](https://github.com/nginx-proxy/nginx-proxy)



```
###############################################################################
#
# Run Dockerized PostgreSQL
#

# 1. Install Docker on your machine if you haven't already done so.
# 2. Pull the PostgreSQL image from Docker Hub by running the following command in your terminal:

docker pull postgres

# 3. Create a Docker container from the image by running the following command:
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

# This will create a container named "some-postgres" with a password set to "mysecretpassword".
# The container will be detached from the terminal, meaning it will run in the background.

# 4. To verify that the container is running, you can use the following command:
docker ps

# This will show a list of all running Docker containers,
# including the PostgreSQL container you just created.

# 5. To connect to the PostgreSQL database, you can use a PostgreSQL client like psql.
# You can install psql on your local machine or connect to the container using another Docker container.
docker run -it --rm --link some-postgres:postgres postgres psql -h postgres -U postgres


# This command creates a new container and connects to the "some-postgres" container
# using the --link flag. The psql command connects to the PostgreSQL database
# using the host name "postgres" and the default user "postgres".
# That's it! You now have a running Dockerized PostgreSQL database
# that you can use for development or testing.
#
###############################################################################
```

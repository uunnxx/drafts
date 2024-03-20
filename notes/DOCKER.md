## Docker Related

### Resources
- [Awesome Docker](https://github.com/veggiemonk/awesome-docker)
- [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)
- [Dockerized GitLab](https://github.com/sameersbn/docker-gitlab)
- [Dockerfiles](https://github.com/jessfraz/dockerfiles)
- [Automated nginx proxy for Docker containers using docker-gen](https://github.com/nginx-proxy/nginx-proxy)


### StackOverflow
- [How to start a stopped Docker container with a different command?](https://stackoverflow.com/questions/32353055/how-to-start-a-stopped-docker-container-with-a-different-command)


### Dockerize
[Let's Dockerize your Django & React.JS App](https://dev.to/adii9/lets-dockerize-your-django-react-js-app-4k23)



### Cheatsheet
- [Docker Cheatsheet](https://docker.jens-piegsa.com/)
- [Docker Cheatsheet](https://github.com/wsargent/docker-cheat-sheet)
- [Docker Cheatsheet](https://github.com/eon01/DockerCheatSheet)


### Articles
- [Docker with PostgreSQL](https://dev.to/obrotoks/docker-with-postgres-1086)
- [Dockerfile Entrypoint: 'file not found'](https://davidhamann.de/2021/11/09/docker-entrypoint-not-found/)
- [How we Reduced our Docker Build Times by 40%](https://medium.com/datamindedbe/how-we-reduced-our-docker-build-times-by-40-afea7b7f5fe7)
- [You Should Stop Writing `Dockerfiles` today](https://medium.com/kpmg-uk-engineering/you-should-stop-writing-dockerfiles-today-do-this-instead-3cd8a44cb8b0)
- [Docker Cheat Sheet - Most Important Docker Commands](https://www.geeksforgeeks.org/docker-cheat-sheet/)
- [Docker - Deploying WebApps on Docker](https://www.geeksforgeeks.org/docker-deploying-webapps-on-docker/)
- [Docker - Publishing Images to Docker Hub](https://www.geeksforgeeks.org/docker-publishing-images-to-docker-hub/)
- [Docker - Docker Container for Node.js](https://www.geeksforgeeks.org/docker-docker-container-for-node-js/)
- [Docker - Using Public Repositories to Host Docker Images](https://www.geeksforgeeks.org/docker-using-public-repositories-to-host-docker-images/)
- [How to Use Docker for Fault Tolerance with Docker Replicas?](https://www.geeksforgeeks.org/how-to-use-docker-for-fault-tolerance-with-docker-replicas/)
- [How to Docker for Cross-Platform Containerization with Docker BuildX](https://www.geeksforgeeks.org/how-to-use-docker-for-cross-platform-containerization-with-docker-buildx/)
- [How to Use Docker for Local Development and Testing](https://www.geeksforgeeks.org/how-to-use-docker-for-local-development-and-testing)
- [Build, Test and Deploy a `flask` REST API Application from GitHub using Jenkins Pipeline Running on Docker](https://www.geeksforgeeks.org/build-test-and-deploy-a-flask-rest-api-application-from-github-using-jenkins-pipeline-running-on-docker/)
- [Запуск Django-приложения в Docker контейнере](https://pythonru.com/uroki/docker-django)


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

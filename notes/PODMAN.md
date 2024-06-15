- [Docker vs Podman: A New Era in Secure Orchestration](https://levelup.gitconnected.com/docker-vs-podman-a-new-era-in-secure-orchestration-957ea2123098)






```

podman run --name postgres -e POSTGRES_USER=username -e POSTGRES_PASSWORD=password -p 5432:5432 -v /home/baka/datafolder -d postgres:16


# Connect to Postgres instance:
PGPASSWORD=password psql -h localhost -p 5432 -U username
```

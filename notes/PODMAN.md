# Podman
- [Podman Documentation](https://docs.podman.io/en/latest/Introduction.html)
- [Podman Documentation](https://podman.io/docs)
- [Basic Setup and Use of Podman](https://github.com/containers/podman/blob/main/docs/tutorials/podman_tutorial.md)

## Articles
- [Moving from `docker-compose` to Podman `pods`](https://www.redhat.com/sysadmin/compose-podman-pods)
- [Podman: Managing `pods` and `containers` in a local container runtime](https://developers.redhat.com/blog/2019/01/15/podman-managing-containers-pods?intcmp=701f20000012ngPAAQ&extIdCarryOver=true&sc_cid=701f2000001OH6fAAG#)
- [Docker vs Podman: A New Era in Secure Orchestration](https://levelup.gitconnected.com/docker-vs-podman-a-new-era-in-secure-orchestration-957ea2123098)
- [`Podman` for `Docker` Users](https://gcore.com/learning/podman-for-docker-users/)
- [Podman Cheatsheet](https://mpolinowski.github.io/docs/DevOps/Linux/2019-09-25--podman-cheat-sheet/2019-09-25/)
- [Podman: Basics for Beginners](https://phoenixnap.com/kb/podman-tutorial)
- [CheatSheet: Run a PostgreSQL container with Podman and podman-compose](https://suedbroecker.net/2024/01/20/cheatsheet-run-a-postgresql-container-with-podman-and-podman-compose/)



## Programs:
- [Podman Desktop](https://podman-desktop.io/)
- [`podman-compose`](https://github.com/containers/podman-compose)




```

podman run --name postgres -e POSTGRES_USER=username -e POSTGRES_PASSWORD=password -p 5432:5432 -v /home/baka/datafolder -d postgres:16


# Connect to Postgres instance:
PGPASSWORD=password psql -h localhost -p 5432 -U username

psql -h localhost -p 5432 -U postgres data_base
```


## Cheatsheet



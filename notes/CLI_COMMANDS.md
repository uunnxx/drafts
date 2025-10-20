> Find the process id that is using the port 8080 

```
netstat -lnp | grep 8080
lsof -i :8080
lsof -iPn :8080
```

> To see which program is listening on which port
`netstat -ntlp`



> Extract archive

```
tar -xvjf filename.tar.bz2
tar -xvzf filename.tar.gz
```




> Get Key Codes: `xev | grep button`

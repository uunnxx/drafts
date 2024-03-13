## Linux|Unix Related


### APPs
- firejail
    - https://wiki.archlinux.org/title/Firejail
    - https://firejail.wordpress.com/
    - https://github.com/netblue30/firejail
- fail2ban
    - https://www.tecmint.com/install-fail2ban-rocky-linux-almalinux/
- moreutils
    - https://joeyh.name/code/moreutils/
- [strace: Linux syscall tracer](https://strace.io)


### Links
- https://github.com/sinedoke/eudyptula
- [](https://ops.tips/)
- [Strace в Linux: история, устройство и использование](https://habr.com/ru/company/badoo/blog/493856/)
- [Using C to inspect Linux syscalls](https://ops.tips/gists/using-c-to-inspect-linux-syscalls/)
- Linux Epoll Alternative
    - [io_uring](https://en.wikipedia.org/wiki/Io_uring)


### PC Settings
- [Mouse Acceleration](https://wiki.archlinux.org/title/Mouse_acceleration)


### Articles
- [Hummingbird init system for Linux based operating systems](https://github.com/Sweets/hummingbird)


### SECURITY
- [Malware Samples | Linux Papers](https://www.vx-underground.org/)


### Etc
- Get Key Codes: `xev | grep button`


> Find the process id that is using the port 8080

```
netstat -lnp | grep 8080
lsof -i :8080
lsof -iPn :8080
```

### Archives:
- tar
- tar.gz
- gz
- lzx
- bz2
- zip
- rar
- 7z
- xz

> Extract archive

```
tar -xvjf filename.tar.bz2
tar -xvzf filename.tar.gz
```

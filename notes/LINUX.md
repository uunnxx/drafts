## Linux / Unix Related


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



[Linux vs Unix](https://blog.stackademic.com/linux-vs-unix-bruhhh-11b08e28be6a)



## Linux Development
- [Hiding the kernel from user space](https://lwn.net/Articles/738975/)


### Parallel, Async, Thread Programming
- [Async IO on Linux: select, poll, and epoll](https://jvns.ca/blog/2017/06/03/async-io-on-linux--select--poll--and-epoll/)
- [Linux Asynchronous IO](https://web.archive.org/web/20150406015143/http://code.google.com/p/kernel/wiki/AIOUserGuide)
- [Faster IO through `io_uring`](https://kernel-recipes.org/en/2019/talks/faster-io-through-io_uring/)
- [Does poll/epoll block? How is it different from async IO](https://itecnote.com/tecnote/does-poll-epoll-block-how-is-it-different-from-async-io/)


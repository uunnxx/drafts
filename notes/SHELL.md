### LINKS:
- https://stackoverflow.com/questions/3430330/best-way-to-make-a-shell-script-daemon#10908325


### Etc
> Repeat until success `$?`:
```
until command; do
  echo Tansfer disrupted, retrying in 10 seconds...
  sleep 10
done
```

> Oneliner:
`until command; do :; done`


```
for i in {0..100..2}
do
echo "$i^2" | bc
done | tail
```

> Get current shell's `pid`
> `ps -p $$ -o ppid=`


> Chunked archive:
```
7z -v100m a folder.7z folder/

# -v volume + b k m g

# unzip with

7z x folder.zip.001

```

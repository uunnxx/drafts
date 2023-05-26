### LINKS:
- https://stackoverflow.com/questions/3430330/best-way-to-make-a-shell-script-daemon#10908325


### Etc
> Repeat until success `$?`:
```
until command; do
  echo Tansfer disrupted, retrying in 10 seconds...
  sleep 10
done

# Oneliner:
until command; do :; done
```

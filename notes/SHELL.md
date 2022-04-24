__SHELL:__

- Extract archive
    - tar -xvjf filename.tar.bz2
    - tar -xvzf filename.tar.gz

__LINKS:__
    - https://stackoverflow.com/questions/3430330/best-way-to-make-a-shell-script-daemon#10908325

Repeat until success `$?`:

until command; do
  echo Tansfer disrupted, retrying in 10 seconds...
  sleep 10
done


Oneliner:
until command; do :; done

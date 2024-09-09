[How do I make my display grayscale?](https://askubuntu.com/questions/1012905/how-do-i-make-my-display-grayscale)



```
# xset r rate 130 40 

gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 40
gsettings set org.gnome.desktop.peripherals.keyboard delay 130

# - delay is given in milliseconds.
# - repeat-interal is also given in milliseconds which is different to the Xorg xset r rate command which uses Hz

```

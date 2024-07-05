





- [adb over Wi-Fi: how to keep fixed port](https://stackoverflow.com/questions/65991502/adb-over-wi-fi-android-11-on-windows-how-to-keep-a-fixed-port-or-connect-aut)
    `adb connect <device_ip>:$(nmap $IP -p 37000-44000 | awk "/\/tcp/" | cut -d/ -f1)`


[](https://android.stackexchange.com/questions/113389/adb-devices-successfully-shows-device-but-adb-connect-usb-inevitably-fails)
[](https://stackoverflow.com/questions/65991502/adb-over-wi-fi-android-11-on-windows-how-to-keep-a-fixed-port-or-connect-aut)


Disable screen lock:
`adb shell svc power stayon true`


Android STF
[How easy it is to create your own Android device farm on Linux](https://paul-stanescu.medium.com/how-easy-it-is-to-create-your-own-android-device-farm-on-linux-c07023615aac)



Connect multiple devices:
```
adb devices -l
scrcpy --serial 0123456789abcdef 
scrcpy -s 0123456789abcdef # short
```


[How to Fix adb pair error uknown host service](https://techoverflow.net/2023/01/24/how-to-fix-adb-pair-error-unknown-host-service/)


[Multiple Devices Over TCP](https://gist.github.com/teocci/67b0771fc0faa4282c45db8e2fd4c107)



## APPs
[QTScrCpy](https://github.com/barry-ran/QtScrcpy)

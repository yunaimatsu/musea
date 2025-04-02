#!/bin/zsh

# Ensure the user connects their Android device to the laptop
read -p "Press any key to continue or (y/n) to confirm: " -n 1 -r
echo "Please ensure your Android device is connected to the laptop."
echo "For more information, visit: https://developer.android.com/studio/run/device"


adb devices

scrcpy

#!/bin/zsh

# restart server
adb kill-server
adb start-server

# enable TCP/IP
adb tcpip 5555
sleep 5

# Connect to the Pixel device over Wi-Fi
adb connect 192.168.1.176:5555

# Verify the connection
adb devices

# If the device is connected, start scrcpy
if adb devices | grep -q "192.168.1.176"; then
  scrcpy -s 192.168.1.176:5555 --no-control
else
  echo "Failed to connect to the device over Wi-Fi."
fi

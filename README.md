# Stuff for HMUF02-V05


This reposisotry contains basic files to get your HMUF02-V05 dongle working with OpenStick.

>I coudln't find any complete info on the net, so I _wasted_ several hours to get it working. I hope it helps someone else.
>
>PRs are more than welcome.

I bougth it here:

No-Referral: https://aliexpress.com/item/1005009435108772.html

Referral: https://s.click.aliexpress.com/e/_EvgsVxA

# Device trees:
I created device tree based on msm8916-yiming-uz801v3 dt

Just changed leds gpio (R 72; G 71 ; B 73)

To use the device tree:
  ```shell
sudo cp ~/msm8916-hmuf02_v5.dtb /boot/dtbs/qcom
sudo sed -i 's/yiming-uz801v3/hmuf02_v5/' /boot/extlinux/extlinux.conf
  ```

ToDo: I might try to overclock the stick 🔥

# WLAN:

⚠️WLAN driver is missing.⚠️

>You need to download [WCNSS_qcom_wlan_nv.bin](https://zebra.ddscentral.org/pub/downloads/openstick/firmware/uz801_v30/modem_wifi/) and save it on _/lib/firmware/wlan/prima/_

To install the driver:
  ```shell
sudo mkdir -p /lib/firmware/wlan/prima/
sudo cp ~/WCNSS_qcom_wlan_nv.bin /lib/firmware/wlan/prima/
  ```


# Scripts:

### led-check.sh

>credits: [LongQT-sea/OpenStick-Builder#3](https://github.com/LongQT-sea/OpenStick-Builder/issues/3)

To install the script to cron:
  ```shell
sudo cp ~/led-check.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/led-check.sh
echo "* * * * * /usr/local/bin/led-check.sh" | sudo crontab -
  ```

# Useful links:
https://github.com/AlienWolfX/HMUF02-V05-USB_MODEM

https://dmitrybrant.com/openstick

https://github.com/LongQT-sea/OpenStick-Builder

https://wvthoog.nl/openstick/
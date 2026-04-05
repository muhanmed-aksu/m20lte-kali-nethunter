#!/bin/bash
# Siber-J2 Pro Ultimate - USB HID Setup Script
# For Samsung Galaxy M20 (SM-M205F) / Exynos 7904

echo "=== Siber-J2 Pro Ultimate USB HID Setup ==="

# Create HID gadget
mkdir -p /configfs/usb_gadget/g1
echo "0x046d" > /configfs/usb_gadget/g1/idVendor  # Logitech
echo "0xc52b" > /configfs/usb_gadget/g1/idProduct # Keyboard
echo "0x0100" > /configfs/usb_gadget/g1/bcdDevice
echo "0x0200" > /configfs/usb_gadget/g1/bcdUSB

# Create HID function
mkdir -p /configfs/usb_gadget/g1/functions/hid.keyboard
echo 1 > /configfs/usb_gadget/g1/functions/hid.keyboard/protocol
echo 1 > /configfs/usb_gadget/g1/functions/hid.keyboard/subclass
echo 8 > /configfs/usb_gadget/g1/functions/hid.keyboard/report_length

# Create report descriptor (standard keyboard)
printf '\x05\x01\x09\x06\xa1\x01\x05\x07\x19\xe0\x29\xe7\x15\x00\x25\x01\x75\x01\x95\x08\x81\x02\x95\x01\x75\x08\x81\x03\x95\x05\x75\x01\x05\x08\x19\x01\x29\x05\x91\x02\x95\x01\x75\x08\x91\x03\xc0' > /configfs/usb_gadget/g1/functions/hid.keyboard/report_desc

# Create configuration
mkdir -p /configfs/usb_gadget/g1/configs/c.1
echo 500 > /configfs/usb_gadget/g1/configs/c.1/MaxPower
ln -s /configfs/usb_gadget/g1/functions/hid.keyboard /configfs/usb_gadget/g1/configs/c.1/

# Enable USB gadget
echo "android" > /configfs/usb_gadget/g1/strings/0x409/serialnumber
echo "Logitech" > /configfs/usb_gadget/g1/strings/0x409/manufacturer
echo "Keyboard" > /configfs/usb_gadget/g1/strings/0x409/product
echo 1 > /configfs/usb_gadget/g1/UDC

echo "=== HID Gadget Enabled ==="
echo "Your device now acts as a Logitech Keyboard"

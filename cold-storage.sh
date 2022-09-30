#!/bin/bash

#change this to whatever your disk is
sudo cryptsetup luksOpen /dev/disk/by-uuid/9a5eb230-0cbf-4cd7-8ae8-16bb02547cad cold_storage

sudo mount /dev/mapper/cold_storage /home/loki/Encrypted/

clear
echo "press enter when finished accessing cold storage."
read waiting

sudo umount /dev/mapper/cold_storage

sudo cryptsetup luksClose cold_storage

clear
echo "device closed."
sleep 1
clear

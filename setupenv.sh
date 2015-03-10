#!/bin/bash
echo "Open source Xtensa toolchain"
echo "============================"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Base dir is: $DIR"

export  VIRTUAL_ENV=$DIR/xtensa-lx106-elf/esptool

export PATH=$DIR/xtensa-lx106-elf/bin:$VIRTUAL_ENV/bin/:$PATH

export ESP_INCLUDE=$DIR/sdk/include
export ESP_LIB=$DIR/sdk/lib

echo "Espressif ESP8266 SDK"
echo "To link external proprietary libraries add:"
echo "xtensa-lx106-elf-gcc -I\$ESP_INCLUDE -L\$ESP_LIB"

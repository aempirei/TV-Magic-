#!/bin/bash

code=tvmagic

echo making tvmagic

echo compiling "$code"

gpasm "$code.a"
picp -c /dev/ttyS0 12f675 -ef

echo writing "$code.hex"
picp -c /dev/ttyS0 12f675 -wp "$code.hex"

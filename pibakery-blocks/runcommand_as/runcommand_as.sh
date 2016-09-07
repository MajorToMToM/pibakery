#!/bin/bash
if [ $2 == "root" ]; then
  exec "$1"
else
  su - $2 -c "$1"
fi

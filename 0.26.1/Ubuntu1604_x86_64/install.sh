#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1RxEoy1PH7a38N3uAujdOTO5sEkYHO4Ym" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1RxEoy1PH7a38N3uAujdOTO5sEkYHO4Ym" -o bazel
sudo chmod +x bazel
sudo cp ./bazel /usr/local/bin
rm ./bazel


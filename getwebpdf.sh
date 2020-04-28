#!/usr/bin/env bash

wget -kO temp.html $1
sudo wkhtmltopdf temp.html $2
rm temp.html
sudo chown crex $2

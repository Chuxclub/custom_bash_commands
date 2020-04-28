#!/usr/bin/env bash

wget -kO temp.html $1
wkhtmltopdf temp.html $2
rm temp.html

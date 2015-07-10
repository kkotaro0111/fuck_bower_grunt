#! /bin/bash

npm install
mkdir -p src/vendor
./node_modules/.bin/grunt bower:install

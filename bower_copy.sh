#! /bin/bash

npm install
mkdir -p src/vendor
./node_modules/.bin/grunt bower:install

mkdir -p src/javascripts
find src/vendor -name "*.js" | xargs -J % cp % src/javascripts/

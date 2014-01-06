#!/bin/bash
YUICOMPRESSOR="/usr/local/bin/yuicompressor"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #directory of the current script
echo $DIR

cd $DIR/../out/js/src
cat *.js > ../combined.js
cd ..
$YUICOMPRESSOR -o combined.min.js combined.js

cd $DIR/../out/css
$YUICOMPRESSOR -o styles.min.css styles.css

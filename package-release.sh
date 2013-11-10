# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Lint checks the CoffeeScript code, compiles the CoffeeScript code, and
# bundles the production files into a .zip for the end-users.

coffeelint *.coffee
coffee -c image-viewer.coffee example.coffee
rm -f image-viewer.zip
zip image-viewer.zip ljd-utils.js image-viewer.js example.html \
    example.css example.js images/1.jpg images/2.png images/3.gif \
    README.markdown

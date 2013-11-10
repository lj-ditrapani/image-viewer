# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Bundles the 3rd party development files
# and resources into a .zip (files that aren't in the github repository
# because they don't belong there.)

name='image-viewer-dev-support.zip'
rm -f $name
zip $name qunit.js qunit.css coffee-script.js ljd-utils.js \
          images/1.jpg images/2.png images/3.gif 

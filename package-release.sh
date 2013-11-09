coffee -c image-viewer.coffee
coffee -c example.coffee
rm -f image-viewer.zip
zip image-viewer.zip ljd-utils.js image-viewer.js example.html \
    example.css example.js images/1.jpg images/2.png images/3.gif

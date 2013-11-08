Image Viewer
==============

This project implements a basic JavaScript image viewer with next and previous buttons to cycle through a collection of image and description pairs.

Operational Dependencies
--------------

This project depends on utils.js.
Download utils.js from ditrapani.info or lj-ditrapani @ github.com

Development Dependencies
--------------

This project depends on utils.js, qunit, and CoffeeScript
Download utils.js from ditrapani.info or lj-ditrapani @ github.com
Download qunit.js and qunit.css from qunitjs.com
Download coffee-script.js from coffeescript.org.

The interface
--------------

User must include utils.js and image-viewer.js in their HTML file.

The user must provide an HTML div element with the id="image-viewer".  The image-viewer will create elements with the following ids (so you can style them how you want in the CSS.)

    - Image viewer container:  image-viewer
    - Next button:  next-button
    - Previous button:  previous-button
    - Image description label:  image-description

User must load utils.js, then image-viewer.js.  Then the user must call `make_image_viewer(pic_names, pic_descriptions, [path])` where `pic_names` is an array of strings of the picture names, `pic_descriptions` is an array of strings of the picture descriptions, and, optionally, `path` which is a string the represents a path to be prepended to each image name before the image is downloaded.

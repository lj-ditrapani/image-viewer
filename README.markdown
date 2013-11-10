Image Viewer
========================================================================

This project implements a basic JavaScript image viewer with next and
previous buttons to cycle through a collection of image and description
pairs.


Operational Dependencies
------------------------------------------------------------------------

To use this product, download it from
http://ditrapani.info/resources/image-viewer.zip .
Unzip the zip file.  The ljd-utils.js and image-viewer.js must be linked
in your HTML file (in that order).  See `example.html` for an example.
Then you must call `ljd.makeImageViewer()` with the desired parameters.
See an example of this in `example.js`.  Style the elements to your
liking.  See `example.css` for ideas.


The interface
------------------------------------------------------------------------

User must include ljd-utils.js and image-viewer.js in their HTML file in
that order.

The user must provide an HTML div element with the id="ljd-image-viewer".  The image-viewer will create elements with the following ids (so you can style them how you want in the CSS.)

    - Image viewer container:  ljd-image-viewer
    - Next button:  ljd-image-viewer-next-button
    - Previous button:  ljd-image-viewer-previous-button
    - img element:  ljd-image-viewer-image
    - Image description label:  ljd-image-viewer-image-description
    - Div containing buttons and description label:
      ljd-image-viewer-button-div

The next and previous buttons have the CCS style name
ljd-image-viewer-button.

User must load ljd-utils.js, then image-viewer.js.  Then the user must call `ljd.makeImageViewer(picNames, picDescriptions, [path])` where `picNames` is an array of strings of the picture names, `picDescriptions` is an array of strings of the picture descriptions, and, optionally, `path` which is a string that represents a path to be prepended to each image name before the image is downloaded.  The default path is the empty string.


Development Dependencies
------------------------------------------------------------------------

To develop this product, clone the repository and then download the developer support package at
http://ditrapani.info/dev-resources/image-viewer-dev-support.zip .
Unzip image-viewer-dev-support.zip inside the project folder.
You'll want a Bourne compatible shell and node.js with the CoffeeScript
npm module installed to use the developer scripts.

- **package-release.sh**: Lint checks the CoffeeScript code, compiles
  the CoffeeScript code, and bundles the production files into a .zip
  for the end-users.
- **package-dev-support.sh**: Bundles the 3rd party development files
  and resources into a .zip (files that aren't in the github repository
  because they don't belong there.)
- **spec.coffee**: image-viewer executable specification
  (run by opening spec.html in a browser)
- **spec.html**: Runs the image-viewer executable specification


TO DO
------

- Add README to image-viewer.zip
- Put image-viewer.zip and image-viewer-dev-support.zip on
  ditrapani.info
- Add autoload images
    * After onload:
    * Use hidden div
    * Loop through picNames and create 1 img per name and attach to div
    * Make img sizes 1x1 px

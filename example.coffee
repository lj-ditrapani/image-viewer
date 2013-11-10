# Author:  Lyall Jonathan Di Trapani -----------------------------------
# An example of how you might use the image-viewer

window.onload = ->
  path = 'images'
  picNames = ['1.jpg', '2.png', '3.gif']
  picDescriptions = ['first image', 'second image', 'third image']
  ljd.makeImageViewer(picNames, picDescriptions, path)
  ljd.autoloadImages()

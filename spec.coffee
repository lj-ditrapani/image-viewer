### Author:  Lyall Jonathan Di Trapani ---------------------------------
# Observer:  Sofia Esther Di Trapani
# image-viewer executable specification
# (run by opening spec.html in a browser)
###


path = 'images'
picNames = ['1.jpg', '2.png', '3.gif']
picDescriptions = ['first image', 'second image', 'third image']


module 'Image Viewer',
  setup: ->
    ljd.makeImageViewer(picNames, picDescriptions, path)


checkState = (picName, picDescription, next, previous) ->
  img = ljd.$('ljd-image-viewer-image')
  equal img.getAttribute('src'), "#{path}/#{picName}"
  equal img.alt, picDescription
  equal ljd.$('ljd-image-viewer-image-description').innerHTML,
        picDescription
  equal isDisabled('next'), next
  equal isDisabled('previous'), previous


isDisabled = (buttonShortName) ->
  ljd.$("ljd-image-viewer-#{buttonShortName}-button").disabled


press = (buttonShortName) ->
  ljd.$("ljd-image-viewer-#{buttonShortName}-button").onclick()


test 'Initialization', ->
  checkState '1.jpg', 'first image', false, true


test 'Next button', ->
  press 'next'
  checkState '2.png', 'second image', false, false
  press 'next'
  checkState '3.gif', 'third image', true, false
  press 'next'
  checkState '3.gif', 'third image', true, false


test 'Previous button', ->
  press 'previous'
  checkState '1.jpg', 'first image', false, true
  press 'next'
  press 'next'
  checkState '3.gif', 'third image', true, false
  press 'previous'
  checkState '2.png', 'second image', false, false
  press 'previous'
  checkState '1.jpg', 'first image', false, true
  press 'previous'
  checkState '1.jpg', 'first image', false, true

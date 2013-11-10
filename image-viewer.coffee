### Author:  Lyall Jonathan Di Trapani ---------------------------------
# Observer:  Sofia Esther Di Trapani
# Depends on ljd-utils.js;  ljd-utils.js must be loaded first
# Implements a basic JavaScript image viewer with next and previous 
# buttons to cycle through a collection of image and description pairs.
###


window.ljd.makeImageViewer = (picNames, picDescriptions, path) ->
  path = '' if not path
  attributes =
    id: 'ljd-image-viewer-previous-button'
    type: 'button'
    value: '<'
    disabled: true
    className: 'ljd-image-viewer-button'
  previousButton = ljd.create 'input', attributes, []
  attributes =
    id: 'ljd-image-viewer-next-button'
    type: 'button'
    value: '>'
    disabled: false
    className: 'ljd-image-viewer-button'
  nextButton = ljd.create 'input', attributes, []
  img = ljd.create 'img', {id: 'ljd-image-viewer-image'}, []
  attributes = {id: 'ljd-image-viewer-image-description'}
  description = ljd.create 'p', attributes, []
  index = 0

  setState = (index) ->
    img.src = "#{path}/#{picNames[index]}"
    img.alt = picDescriptions[index]
    ljd.setText(description, picDescriptions[index])

  previousButton.onclick = () ->
    if index != 0
      index -= 1
    if index == 0
      previousButton.disabled = true
    else
      nextButton.disabled = false
    setState index

  nextButton.onclick = () ->
    if index != (picNames.length - 1)
      index += 1
    if index == (picNames.length - 1)
      nextButton.disabled = true
    else
      previousButton.disabled = false
    setState index

  setState index
  elements = [previousButton, description, nextButton]
  div = ljd.create 'div', {id: 'ljd-image-viewer-button-div'}, elements
  ljd.$ 'ljd-image-viewer', [img, div]

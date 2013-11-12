### Author:  Lyall Jonathan Di Trapani ---------------------------------
# Observer:  Sofia Esther Di Trapani
# Depends on ljd-utils.js;  ljd-utils.js must be loaded first
# Implements a basic JavaScript image viewer with next and previous
# buttons to cycle through a collection of image and description pairs.
###


ljd.makeImageViewer = (picNames, picDescriptions, path) ->
  if not path
    path = ''
  else
    path = path + '/' if path.slice(-1) != "/"
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
    img.src = path + picNames[index]
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
  ljd.autoloadImages.picNames = picNames
  ljd.autoloadImages.path = path
  elements = [previousButton, description, nextButton]
  div = ljd.create 'div', {id: 'ljd-image-viewer-button-div'}, elements
  ljd.$ 'ljd-image-viewer', [img, div]


ljd.autoloadImages = () ->
  path = ljd.autoloadImages.path
  imgs = []
  for picName in ljd.autoloadImages.picNames
    img = ljd.create 'img', {src: path + picName}, []
    img.style.height = '1px'
    img.style.width = '1px'
    img.style.padding = '0px'
    img.style.margin = '0px'
    img.style.border = 'none'
    imgs.push(img)
  hiddenDiv = ljd.$ 'ljd-image-viewer-hidden-div', imgs
  hiddenDiv.style.visibility = 'hidden'
  hiddenDiv.style.padding = '0px'
  hiddenDiv.style.margin = '0px'
  hiddenDiv.style.border = 'none'
  hiddenDiv.style.fontSize = '0px'
  return hiddenDiv

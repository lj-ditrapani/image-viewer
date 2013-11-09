# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Observer:  Sofia Esther Di Trapani

window.ljd.makeImageViewer = (picNames, picDescriptions, path) ->
  index = 0
  attributes =
    id: 'ljd-image-viewer-previous-button'
    type: 'button'
    value: '< Previous'
    disabled: true
    className: 'ljd-image-viewer-button'
  previousButton = ljd.create 'input', attributes, []
  attributes =
    id: 'ljd-image-viewer-next-button'
    type: 'button'
    value: 'Next >'
    disabled: false
    className: 'ljd-image-viewer-button'
  nextButton = ljd.create 'input', attributes, []
  attributes =
    id: 'ljd-image-viewer-image'
    alt: picDescriptions[index]
    src: "#{path}/#{picNames[index]}"
  img = ljd.create 'img', attributes, []
  attributes = {id: 'ljd-image-viewer-image-description'}
  description = ljd.create 'p', attributes, [picDescriptions[index]]
  elements = [img, nextButton, description, previousButton]
  ljd.$ 'ljd-image-viewer', elements

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

  return 0

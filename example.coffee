window.onload = ->
  path = 'images'
  picNames = ['1.jpg', '2.png', '3.gif']
  picDescriptions = ['first image', 'second image', 'third image']
  ljd.makeImageViewer(picNames, picDescriptions, path)

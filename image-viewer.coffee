# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Observer:  Sofia Esther Di Trapani

window.ljd.make_image_viewer = (pic_names, pic_descriptions, path) ->
    attributes = {
        id: 'ljd-image-viewer-previous-button',
        type: 'button',
        value: '< Previous',
        disable: false,
        className: 'ljd-image-viewer-button'
    }
    index = 0
    previous_button = ljd.create 'input', attributes, []
    attributes.id = 'ljd-image-viewer-next-button'
    attributes.value = 'Next >'
    next_button = ljd.create 'input', attributes, []
    attributes = {id: 'ljd-image-viewer-image', alt: 'Display image', src: path + '/' + pic_names[0]}
    img = ljd.create 'img', attributes, []
    description = ljd.create 'p', {id: 'ljd-image-viewer-image-description'}, [pic_descriptions[0]]
    elements = [img, next_button, description, previous_button]
    image_viewer_div = ljd.$ 'ljd-image-viewer', elements

    setState = (index) ->
        img.src = "#{path}/#{pic_names[index]}"
        ljd.setText(description, pic_descriptions[index])
        
    previous_button.onclick = () ->
        if index != 0
            index -= 1
        setState index

    next_button.onclick = () ->
        if index != (pic_names.length - 1)
            index += 1
        setState index

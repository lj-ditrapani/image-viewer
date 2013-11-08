# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Observer:  Sofia Esther Di Trapani

window.make_image_viewer = (pic_names, pic_descriptions, path) ->
    attributes = {
        id: 'ljd-image-viewer-previous-button',
        type: 'button',
        value: '< Previous',
        disable: false,
        className: 'ljd-image-viewer-button'
    }
    previous_button = ljd.create 'input', attributes, []
    attributes.id = 'ljd-image-viewer-next-button'
    attributes.value = 'Next >'
    next_button = ljd.create 'input', attributes, []
    attributes = {id: 'ljd-image-viewer-image', alt: 'Display image', src: path + '/' + pic_names[0]}
    img = ljd.create 'img', attributes, []
    description = ljd.create 'p', {id: 'ljd-image-viewer-image-description'}, [pic_descriptions[0]]
    elements = [previous_button, img, next_button, description]
    image_viewer_div = ljd.$ 'ljd-image-viewer', elements
    previous_button.onclick = () -> console.log 'click'
    

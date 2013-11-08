# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Observer:  Sofia Esther Di Trapani

window.make_image_viewer = (pic_names, pic_descriptions, path) ->
    attributes = {
        type: "button",
        value: "< Previous",
        disable: true,
        className: "image-viewer-button"
    }
    previous_button = dom.create 'input', attributes, []
    next_button = dom.create 'input', attributes, []
    attributes = {id: 'image-viewer-image', alt: 'Display image', src: path + '/' + pic_names[0]}
    img = dom.create 'img', attributes, []
    console.log img
    description_p = dom.create 'p', {id: 'image-description'}, [pic_descriptions[0]]
    elements = [previous_button, img, next_button, description_p]
    image_viewer_div = $ 'image-viewer', elements
    

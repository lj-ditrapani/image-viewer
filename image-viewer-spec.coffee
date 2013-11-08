# Author:  Lyall Jonathan Di Trapani -----------------------------------
# Observer:  Sofia Esther Di Trapani


path = 'images'
pic_names = ['1.png', '2.png', '3.png']
pic_descriptions = ['first image', 'second image', 'third image']


module 'Image Viewer',
    setup: ->
        @image_viewer = make_image_viewer(pic_names, 
                                          pic_descriptions, 
                                          path)   

check_state = (pic_name, pic_description) ->
    img_src = $('image-viewer-image').getAttribute('src')
    equal img_src, "#{path}/#{pic_name}"
    equal $('image-description').innerHTML, pic_description


test 'Initialization', ->
    check_state '1.png', 'first image'


test 'Next button', ->
    $('next-button').onclick()
    check_state '2.png', 'second image'
    $('next-button').onclick()
    check_state '3.png', 'third image'
    $('next-button').onclick()
    check_state '3.png', 'third image'


test 'Previous button', ->
    $('previous-button').onclick()
    check_state '1.png', 'first image'
    $('next-button').onclick()
    $('next-button').onclick()
    check_state '3.png', 'third image'
    $('previous-button').onclick()
    check_state '2.png', 'second image'
    $('previous-button').onclick()
    check_state '1.png', 'first image'
    $('previous-button').onclick()
    check_state '1.png', 'first image'


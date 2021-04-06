
sub init()
    m.maskGroup = m.top.findNode("maskGroup")
    m.customPoster = m.top.findNode("customPoster")
end sub

function configurateCustomRadius(width, height, radius ,url, uri)
    imageUrlForMask = createRadius(radius, width, height, url)

    m.customPoster.width = width
    m.customPoster.height = height

    m.maskGroup.maskUri = imageUrlForMask
    m.customPoster.uri = uri
end function

function configurateCustomPosterCircle(width, height, uri)

    imageUrlForMask = createCircle(width, height)

    m.customPoster.width = width
    m.customPoster.height = height

    m.maskGroup.maskUri = imageUrlForMask
    m.customPoster.uri = uri
end function
Library "v30/bslDefender.brs"

function createRadius(radius, width, height, url)
    m.bitmapsRadius = dfNewBitmapSet(ReadAsciiFile("pkg:/source/regionsBitmap.xml"))

    bitmap = CreateObject("roBitmap", {width: width, height: height, AlphaEnable: false})
    bitmap.clear(&hffffffff)

    bitmap.DrawObject(0, 0, m.bitmapsRadius.regions["radius" + radius + ".leftUP"])
    bitmap.DrawObject(width - 25, height - 25, m.bitmapsRadius.regions["radius" + radius + ".downRight"])
    bitmap.DrawObject(width - 25, 0, m.bitmapsRadius.regions["radius" + radius + ".rightUP"])
    bitmap.DrawObject(0, height - 25, m.bitmapsRadius.regions["radius" + radius + ".downLeft"])

    bitmap.Finish()

    ba = bitmap.GetPng(0, 0, width, height)
    ba.WriteFile("tmp:/" + url)

    return ("tmp:/" + url)
end function

function createCircle(width, height)
    baseUrl = "pkg:/images/ImageRadius/"
    strWidth = StrI(width).Trim()
    createUrl = "circle" + strWidth
    imageUrl = baseUrl + createUrl + ".png"
    return imageUrl
end function
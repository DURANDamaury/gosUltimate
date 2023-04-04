function pokePixel( gfx )
    print(xCursorView..' '..xCursorZoom)
    if love.keyboard.isDown("space") then
        local rgb = palette[pen0+1]
        local rouge = (rgb[1]+1)/255
        local vert = (rgb[2]+1)/255
        local bleu = (rgb[3]+1)/255
        print('rouge='..rouge..' vert='..vert..' bleu='..bleu)
        local xpixel = xCursorView+xCursorZoom
        local ypixel = yview+yCursorView+yCursorZoom
        print('x='..xpixel..' y='..ypixel)
        gfx:setPixel(xpixel, ypixel, rouge, vert, bleu, 1)
    end
end



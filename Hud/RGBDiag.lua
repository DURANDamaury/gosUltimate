function RGBDiag(pen0,palette)
    local widthRGBDiag = 96
    local heightRGBDiag = 48
    widthWindow = love.graphics.getWidth()
    love.graphics.setColor(1,1,1,1)
    love.graphics.rectangle("fill",widthWindow-widthRGBDiag,402,widthRGBDiag,heightRGBDiag)

    love.graphics.setColor(0.5,0.5,0.5,255)
    for i=402,402+heightRGBDiag,6 do
        love.graphics.line(widthWindow-widthRGBDiag,i,widthWindow,i)
    end

    local rgb = palette[pen0+1]
    local rouge = rgb[1]
    local vert = rgb[2]
    local bleu = rgb[3]
    -- rouge
    love.graphics.setColor(rouge/255,0,0,1) 
    local rouge15 = rouge/15
    love.graphics.rectangle("fill",widthWindow-widthRGBDiag+8,402+heightRGBDiag-(rouge15*3),16,rouge15*3)
    -- vert
    love.graphics.setColor(0,vert/255,0,1) 
    local vert15 = vert/15
    love.graphics.rectangle("fill",widthWindow-widthRGBDiag+8+32,402+heightRGBDiag-(vert15*3),16,vert15*3)
    -- bleu
    love.graphics.setColor(0,0,bleu/255,1) 
    local bleu15 = bleu/15
    love.graphics.rectangle("fill",widthWindow-widthRGBDiag+8+32+32,402+heightRGBDiag-(bleu15*3),16,bleu15*3)

    love.graphics.setColor(1,1,1,1)
end
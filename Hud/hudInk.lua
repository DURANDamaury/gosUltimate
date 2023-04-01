function hudInk(palette)
    
    for i,rgba in pairs(palette) do
        local rouge = rgba[1]
        local vert = rgba[2]
        local bleu = rgba[3]
        local alpha = rgba[4]
        --print('rouge:'..rouge..' vert:'..vert..' bleu:'..bleu..' alpha:'..alpha)
        love.graphics.setColor(rouge/255,vert/255,bleu/255,alpha/255)
        love.graphics.rectangle("fill",10+(i-1)*36,416,18,18)
    end
    love.graphics.setColor(255,255,255,255)
end
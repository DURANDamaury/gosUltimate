function hudInk(palette)
    
    for i,rgba in pairs(palette) do
        local rouge = rgba[1]
        local vert = rgba[2]
        local bleu = rgba[3]
        local alpha = rgba[4]
        --print('rouge:'..rouge..' vert:'..vert..' bleu:'..bleu..' alpha:'..alpha)
        love.graphics.setColor(rouge/255,vert/255,bleu/255,alpha/255)
        love.graphics.rectangle("fill",10+(i-1)*36,416,18,18)

        love.graphics.setColor(1,1,1,1)
        love.graphics.rectangle("line", 10+(i-1)*36-2,414,22,22)
        love.graphics.rectangle("line", 10+(i-1)*36-3,413,24,24)
        love.graphics.rectangle("line", 10+(i-1)*36-4,412,26,26)
        love.graphics.rectangle("line", 10+(i-1)*36-5,411,28,28)

    end
end
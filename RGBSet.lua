function RGBSet(key,pen0,palette)
    local rgb = palette[pen0+1]
    local rouge = rgb[1]
    local rouge15 = math.ceil(rouge/15)
    local vert = rgb[2]
    local vert15 = vert/15
    local bleu = rgb[3]
    local bleu15 = bleu/15
--inc rouge
    if key == "kp7" then        
        if rouge15 == 15 then 
            rouge15 = 0
            palette[pen0+1][1] = rouge15*15
        else
            rouge15 = rouge15 + 1
            palette[pen0+1][1] = rouge15*15
        end
    elseif
-- dec rouge
    key == "kp4" then 
        if rouge15 == 0 then 
            rouge15 = 15
            palette[pen0+1][1] = rouge15*15
        else
            rouge15 = rouge15 - 1
            palette[pen0+1][1] = rouge15*15
        end
    elseif
-- inc vert
    key == "kp8" then        
        if vert15 == 15 then 
            vert15 = 0
            palette[pen0+1][2] = vert15*15
        else
            vert15 = vert15 + 1
            palette[pen0+1][2] = vert15*15
        end
    elseif
-- dec vert
    key == "kp5" then 
        if vert15 == 0 then 
            vert15 = 15
            palette[pen0+1][2] = vert15*15
        else
            vert15 = vert15 - 1
            palette[pen0+1][2] = vert15*15
        end
    elseif
-- inc bleu
    key == "kp9" then        
        if bleu15 == 15 then 
            bleu15 = 0
            palette[pen0+1][3] = bleu15*15
        else
            bleu15 = bleu15 + 1
            palette[pen0+1][3] = bleu15*15
        end
    elseif
-- dec bleu
    key == "kp6" then 
        if bleu15 == 0 then 
            bleu15 = 15
            palette[pen0+1][3] = bleu15*15
        else
            bleu15 = bleu15 - 1
            palette[pen0+1][3] = bleu15*15
        end


    end
end
function moveCursorZoom(key)
    
    if  love.keyboard.isDown("lctrl") then return
    elseif love.keyboard.isDown("lshift") then return
    else
        if key == "down" then
            if yCursorZoom < hauteurZoom-1 then
                yCursorZoom = yCursorZoom + 1
            end
        elseif key == "up" then
            if yCursorZoom > 0 then
                yCursorZoom = yCursorZoom - 1
            end
        elseif key == "left" then
            if xCursorZoom > 0 then
                xCursorZoom = xCursorZoom - 1
            end
        elseif key == "right" then
            if xCursorZoom < largeurZoom-1 then
            xCursorZoom = xCursorZoom + 1
            end
        end
    end
end
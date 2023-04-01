function moveZoom()

    if love.keyboard.isDown("lshift") then
        if love.keyboard.isDown("left") then
            if xzoom>0 then
                xzoom = xzoom - 1
                xCursorView = xCursorView - 1
            end
        elseif love.keyboard.isDown("right") then
            if xzoom < largeur - largeurZoom then
                xzoom = xzoom + 1
                xCursorView = xCursorView + 1
            end
        elseif love.keyboard.isDown("up") then
            if yzoom > 0 then
                yzoom = yzoom - 1
                yCursorView = yCursorView - 1
            end
        elseif love.keyboard.isDown("down") then
            -- ajouter ici le blocage de débordement en bas de l'écran
            if yzoom < hauteurview-hauteurZoom then
                yzoom = yzoom + 1
                yCursorView = yCursorView + 1
            end
        end
    end
end
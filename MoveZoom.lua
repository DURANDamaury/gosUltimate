function moveZoom()

    local old_xzoom=xzoom
    local old_yzoom=yzoom
    if love.keyboard.isDown("lshift") then
        if love.keyboard.isDown("left") then
            if xzoom>0 then
                xzoom = xzoom - 1
            end
        elseif love.keyboard.isDown("right") then
            if xzoom < largeur - largeurZoom then
                xzoom = xzoom + 1
            end
        elseif love.keyboard.isDown("up") then
            if yzoom > 0 then
                yzoom = yzoom - 1
            end
        elseif love.keyboard.isDown("down") then
            -- ajouter ici le blocage de débordement en bas de l'écran
            yzoom = yzoom + 1
        end
    end
end
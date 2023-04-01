function moveView(key)
    if love.keyboard.isDown("lctrl") then
        if key == "down" then
            yview = yview + 8
            yzoom = yzoom + 8
        elseif key == "up" then
            if yview > 0 then
                yview = yview - 8
                yzoom = yzoom -8
            end
        end
    end

end
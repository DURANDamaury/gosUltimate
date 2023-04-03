function moveCursorPen(key)
    if love.keyboard.isDown("lctrl") then
        if key == "kp0" then
            if pen1 == 0 then        --On traite le cas si encre 0
                if mode == 0 then 
                    pen1 = 15
                end
                if mode == 1 then
                    pen1=3
                end
                if mode == 2 then
                    pen1=1
                end
            else                    --sinon on décrémente
                pen1 = pen1 - 1
            end

        elseif key == "kp." then
            if mode == 0 and pen1 == 15 then
                pen1 = 0
            elseif mode == 1 and pen1 == 3 then
                pen1 = 0
            elseif mode == 2 and pen1 == 1 then 
                pen1 = 0
            else
                pen1 = pen1 + 1
            end
        end
    else 
        if key == "kp0" then
            if pen0 == 0 then        --On traite le cas si encre 0
                if mode == 0 then 
                    pen0 = 15
                end
                if mode == 1 then
                    pen0=3
                end
                if mode == 2 then
                    pen0=1
                end
            else                    --sinon on décrémente
                pen0 = pen0 -1
            end

        elseif key == "kp." then
            if mode == 0 and pen0 == 15 then
                pen0 = 0
            elseif mode == 1 and pen0 == 3 then
                pen0 = 0
            elseif mode == 2 and pen0 == 1 then 
                pen0 = 0
            else
                pen0 = pen0 + 1
            end
        end
    end
end
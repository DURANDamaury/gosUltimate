function moveView()

    if key == "pagedown" then
        yview = yview + 8
        print(yview)
    elseif key == "pageup" then
        yview = yview - 8
        print(yview)
    end
    
end
function cursorView()
    love.graphics.setColor(255,0,0,0.8)
    love.graphics.rectangle("line",xCursorView*zoom,yCursorView*zoom/2,largeurZoom*zoom,hauteurZoom*zoom/2)
    love.graphics.setColor(255,255,255)
end
function cursorView()
    love.graphics.setColor(1,0,0,1)
    love.graphics.rectangle("line",xCursorView*zoom,yCursorView*zoom/2,largeurZoom*zoom,hauteurZoom*zoom/2)
    love.graphics.setColor(1,1,1,1)
end
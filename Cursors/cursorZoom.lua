function cursorZoom()
    love.graphics.setColor(255,0,0,0.8)
    love.graphics.rectangle("line", xCursorZoom*zoom*coef*2,yZoomWindow+yCursorZoom*zoom*coef, zoom*coef*2,zoom*coef)
    love.graphics.setColor(255,255,255)
end
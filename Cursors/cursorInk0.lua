function cursorInk0(ink0)
    love.graphics.setColor(1,0,0,1)
    love.graphics.rectangle("line", 10+ink0*36-1,415,20,20)
    love.graphics.rectangle("line", 10+ink0*36-2,414,22,22)
    love.graphics.rectangle("line", 10+ink0*36-3,413,24,24)
    love.graphics.rectangle("line", 10+ink0*36-4,412,26,26)  
    love.graphics.setColor(1,1,1,1)
end
function cursorPen1(pen1)
    love.graphics.setColor(1,0,0,1)
    love.graphics.rectangle("line", 10+pen1*36-1,415,20,20)
    love.graphics.rectangle("line", 10+pen1*36-2,414,22,22)
    love.graphics.rectangle("line", 10+pen1*36-3,413,24,24)
    love.graphics.rectangle("line", 10+pen1*36-4,412,26,26)
    love.graphics.line(10+pen1*36,415, 30+pen1*36,435)
    love.graphics.setColor(1,1,1,1)
end
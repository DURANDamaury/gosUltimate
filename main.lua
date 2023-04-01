
require("moveView")
require("moveZoom")
require("moveCursorZoom")
require("./Cursors/cursorView")
require("./Cursors/cursorZoom")

-- Valeurs d'initialisation
coef = 2
zoom = 6
yZoomWindow = 448
xzoom = 0
yzoom = 0
yview = 0
xCursorView = 0
yCursorView = 0
xCursorZoom = 0
yCursorZoom = 0
largeur = 192
largeurView = 192
hauteurview = 134
largeurZoom = 44
hauteurZoom = 30

love.window.setMode(1152, 1088,{borderless=true})

-- Evite le flou merdique
love.graphics.setDefaultFilter ("nearest", "nearest", 1)


-- 
gfx = love.graphics.newImage('Aquablue.png')
quadView = love.graphics.newQuad(0,yview,largeurView,hauteurview,gfx:getDimensions())
quadZoom = love.graphics.newQuad(xzoom,yzoom,largeurZoom,hauteurZoom,gfx:getDimensions())

-----------------------------------------------------------------------------------------
function love.keypressed( key, scancode, isrepeat )
    -- on placera ici les touches sans répétitions    
    moveView(key)
    moveCursorZoom(key)
end

-----------------------------------------------------------------------------------------
function love.update()
    -- Touches à répétition
    moveZoom()
end
-----------------------------------------------------------------------------------------
function love.draw()
    --WindowView
    quadView:setViewport(0,yview,192,134,gfx:getDimensions())
    love.graphics.draw(gfx,quadView,0,0,0,6,3)
    --WindowZoom
    quadZoom:setViewport(xzoom,yzoom,44,30,gfx:getDimensions())
    love.graphics.draw(gfx, quadZoom,0,yZoomWindow,0,24,12)

    cursorView()
    cursorZoom()
end



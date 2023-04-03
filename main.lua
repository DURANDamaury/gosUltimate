
require("moveView")
require("moveZoom")
require("moveCursorZoom")
require("moveCursorPen")
require("./Cursors/cursorView")
require("./Cursors/cursorZoom")
require("./Cursors/cursorPen0")
require("./Cursors/cursorPen1")
require("./Hud/hudInk")

-- Valeurs d'initialisation
--- Zoom View et curseurs
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
--- Encres
pen0 = 1 -- Encre d'écriture
pen1 = 0 -- Encre d'éffacement
mode = 0

palette = {
    {0,0,239,255},
    {0,235,239,255},
    {123,235,239,255},
    {0,125,239,255},
    {239,235,239,255},
    {0,0,123,255},
    {0,0,0,255},
    {238,138,0,255},
    {123,125,0,255},
    {123,0,0,255},
    {239,235,0,255},
    {239,125,123,255},
    {123,235,0,255},
    {239,235,123,255},
    {0,125,0,255},
    {123,125,239,255}
}

------------------------------------------------------
love.window.setMode(1152, 808)
love.window.setTitle( "Graph'OS Ultimate édition" )

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
    moveCursorPen(key)
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
    --Palette

    --WindowZoom
    quadZoom:setViewport(xzoom,yview+yzoom,44,30,gfx:getDimensions())
    love.graphics.draw(gfx, quadZoom,0,yZoomWindow,0,24,12)

    cursorView()
    cursorZoom()
    hudInk(palette)
    cursorPen0(pen0)
    cursorPen1(pen1)
end



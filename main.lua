
require("moveView")
require("moveZoom")

-- Valeurs d'initialisation
xzoom = 0
yzoom = 0
yview = 0
largeur = 192
largeurZoom = 44
hauteurZoom = 30

love.window.setMode(1152, 1088)

-- Evite le flou merdique
love.graphics.setDefaultFilter ("nearest", "nearest", 1)


-- 
gfx = love.graphics.newImage('Aquablue.png')
quadView = love.graphics.newQuad(0,yview,192,134,gfx:getDimensions())
quadZoom = love.graphics.newQuad(xzoom,yzoom,largeurZoom,hauteurZoom,gfx:getDimensions())

-----------------------------------------------------------------------------------------
function love.keypressed( key, scancode, isrepeat )
    moveView()
end

-----------------------------------------------------------------------------------------
function love.update()
    moveZoom()
end
-----------------------------------------------------------------------------------------
function love.draw()
    --WindowView
    quadView:setViewport(0,yview,192,134,gfx:getDimensions())
    love.graphics.draw(gfx,quadView,0,0,0,6,3)
    --WindowZoom
    quadZoom:setViewport(xzoom,yzoom,44,30,gfx:getDimensions())
    love.graphics.draw(gfx, quadZoom,0,448,0,24,12)

end



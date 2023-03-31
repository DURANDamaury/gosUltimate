-- Valeurs d'initialisation
xzoom = 0
yzoom = 0
largeur = 192
largeurZoom = 44
hauteurZoom = 30

love.window.setMode(1152, 1088)

-- Evite le flou merdique
love.graphics.setDefaultFilter ("nearest", "nearest", 1)

-- 
gfx = love.graphics.newImage('Aquablue.png')
quadView = love.graphics.newQuad(0,0,384,134,gfx:getDimensions())
quadZoom = love.graphics.newQuad(xzoom,yzoom,largeurZoom,hauteurZoom,gfx:getDimensions())


function love.update()
    -- -------------------------------------------------------------------------
    -- -- MOVE ZOOM
    -- local old_xzoom=xzoom
    -- local old_yzoom=yzoom
    -- if love.keyboard.isDown("lshift") then
    --     if love.keyboard.isDown("left") then
    --         if xzoom>0 then
    --             xzoom = xzoom - 1
    --         end
    --     elseif love.keyboard.isDown("right") then
    --         if xzoom < largeur - largeurZoom then
    --             xzoom = xzoom + 1
    --         end
    --     elseif love.keyboard.isDown("up") then
    --         if yzoom > 0 then
    --             yzoom = yzoom - 1
    --         end
    --     elseif love.keyboard.isDown("down") then
    --         -- ajouter ici le blocage de débordement en bas de l'écran
    --         yzoom = yzoom + 1
    --     end
    -- end

    -- if xzoom~=oldxzoom then
    --     quadZoom:release()
    --     quadZoom = love.graphics.newQuad(xzoom,yzoom,44,30,gfx:getDimensions())
    -- end

    -- if yzoom~=oldyzoom then
    --     quadZoom:release()
    --     quadZoom = love.graphics.newQuad(xzoom,yzoom,44,30,gfx:getDimensions())
    -- end
    -- ----------------------------------------------------------------------------------
    require("MoveZoom")
end

function love.draw()
    love.graphics.draw(gfx,quadView,0,0,0,6,3) -- view
    love.graphics.draw(gfx,quadZoom,0,448,0,24,12) -- view

end



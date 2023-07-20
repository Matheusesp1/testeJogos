push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

local background = love.graphics.newImage('backgrou')
local ground = love.graphics.newImage('ground.png')

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('Fifty Bird')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_WIDTH, WINDOW_WIDTH, WINDOW_WIDTH,{ 
        vsync = true, 
        fullscreen = false,
        resizable = true
    })
end

function love.resize(w,h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

functionlove.draw()
    push:start()
    love.graphics.draw(background, 0 , 0)

    love.graphics.draw(ground, 0 ,VIRTUAL_WIDTH - 16)
    push:finish()
end
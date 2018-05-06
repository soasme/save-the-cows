local GameControlSystem = Tiny.processingSystem(Class 'GameControlSystem')
local Missile = require('entities.Missile')

GameControlSystem.filter = Tiny.requireAll('controllable')

function GameControlSystem:process(e, dt)
    local space = love.keyboard.isDown('space')

    -- nothing need to be handled is no touch or no space
    if not space then return end

    if space then
        local missile = Missile(
                player.pos.x + 8,
                player.pos.y - 32,
                50,
                -200)
        world:add(missile)
    end
end

return GameControlSystem

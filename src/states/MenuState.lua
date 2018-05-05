local MenuState = Class 'MenuState'

function MenuState:enter()
    _G.player = require('entities.Player')(
            love.graphics.getWidth() * 1 / 4,
            love.graphics.getHeight() * 2 / 3)
    _G.world = Tiny.world(
        require('systems.GameControlSystem')(),
        require('systems.UpdateSystem')(),
        require('systems.CollisionSystem')(Bump.newWorld(32)),
        require('systems.SpriteSystem')(),
        _G.player
    )

end

function MenuState:draw()
    world:update(love.timer.getDelta())
end

return MenuState

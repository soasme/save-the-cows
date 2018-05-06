local PlayState = Class 'PlayState'

function PlayState:enter()
    _G.player = require('entities.Player')(
            love.graphics.getWidth() * 1 / 4,
            love.graphics.getHeight() * 2 / 3)
    _G.world = Tiny.world(
        require('systems.EphemeralSystem')(),
        require('systems.GameControlSystem')(),
        require('systems.UpdateSystem')(),
        require('systems.CollisionSystem')(Bump.newWorld(32)),
        require('systems.SpriteSystem')(),
        require('entities.WormHole')(),
        _G.player
    )

end

function PlayState:draw()
    world:update(love.timer.getDelta())
end

return PlayState

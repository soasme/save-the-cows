local MenuState = Class 'MenuState'

function MenuState:enter()
    _G.world = Tiny.world(
        require('systems.UpdateSystem')(),
        require('systems.CollisionSystem')(Bump.newWorld(32)),
        require('systems.SpriteSystem')(),

        require('entities.Player')(0, 0)
    )
end

function MenuState:draw()
    world:update(love.timer.getDelta())
end

return MenuState

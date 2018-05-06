local WormHole = Class 'WormHole'
local UFO = require 'entities.UFO'

COOLING = 1.5

function WormHole:init(x, y)
    self.name = 'wormhole'
    self.cooling = COOLING
end

function WormHole:update(dt)
    self.cooling = self.cooling - dt

    if self.cooling < 0 then
        local h = 50 + math.random() * 150
        local ufo = UFO(512, h)
        world:add(ufo)
        self.cooling = COOLING
    end
end

return WormHole

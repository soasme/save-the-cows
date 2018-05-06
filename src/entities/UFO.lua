local UFO = Class 'UFO'

UFO.sprite = love.graphics.newImage('assets/UFO.png')

function UFO:init(x, y)
    self.pos = { x = x, y = y }
    self.vel = { x = -100, y = 0 }
    self.hitbox = { w = 32, h = 32 }
    self.rot = 0

    self.lifetime = 20
end

return UFO

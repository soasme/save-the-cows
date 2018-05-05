local Missile = Class 'Missile'

function Missile:init(x, y)
    self.name = 'missile'
    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}
    self.rot = 0
    self.hitbox = {w = 16, h = 32}
    self.debugbox = true
end

function Missile:onCollision(col)
end

return Missile

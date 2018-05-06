local Missile = Class 'Missile'

Missile.sprite = love.graphics.newImage('assets/Missile.png')

function Missile:init(x, y, v0x, v0y)
    self.name = 'missile'
    self.p0 = {x = x, y = y} -- initial position
    self.v0x = v0x
    self.v0y = v0y

    self.pos = {x = x, y = y}
    self.rot = 0
    self.vel = {x = 0, y = 0}
    self.hitbox = {w = 16, h = 32}
    self.lifetime = 10

    self.spawned_t = 0

end

local function approx_derivative(f, delta)
    local delta = delta or 1e-4
    return function (x)
        return (f(x + delta) - f(x))/delta
    end
end

function Missile:update(dt)
    local g = 100
    self.spawned_t = self.spawned_t + dt
    self.vel.x = self.v0x
    self.vel.y = self.v0y + g * self.spawned_t
    local tan_theta = self.v0y / self.v0x + g * self.spawned_t / self.v0x
    local rad = math.atan(tan_theta)
    self.rot = math.rad(90 +  math.deg(rad))
end

function Missile:onCollision(col)
end

return Missile

local Player = Class 'Player'

function Player:init(x, y)
    self.name = 'player'
    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}
    self.hitbox = {w = 32, h = 32}
    self.debugbox = true
    self.controllable = true
end

return Player

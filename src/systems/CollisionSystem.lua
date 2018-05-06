local CollisionSystem = Tiny.processingSystem(Class "CollisionSystem")

function CollisionSystem:init(bumpWorld)
    self.bumpWorld = bumpWorld
    self.filter = Tiny.requireAll("pos", "vel", "hitbox")
end

local function collisionFilter(e1, e2)
    return nil
end

function CollisionSystem:process(e, dt)
    local pos = e.pos
    local vel = e.vel
    local cols, len
    pos.x, pos.y, cols, len = self.bumpWorld:move(e,
        pos.x + vel.x * dt,
        pos.y + vel.y * dt,
        collisionFilter)
    for i = 1, len do
        local col = cols[i]
        if e.onCollision then
            e:onCollision(col)
        end
        if col.other.onCollision then
            col.other:onCollision(col)
        end
    end
    if e.debugbox then
        love.graphics.rectangle('line', e.pos.x, e.pos.y, e.hitbox.w, e.hitbox.h)
    end
end

function CollisionSystem:onAdd(e)
    local pos = e.pos
    local hitbox = e.hitbox
    self.bumpWorld:add(e, pos.x, pos.y, hitbox.w, hitbox.h)
end

function CollisionSystem:onRemove(e)
    self.bumpWorld:remove(e)
end

return CollisionSystem

local EphemeralSystem = Tiny.processingSystem(Class "EphemeralSystem")

EphemeralSystem.filter = Tiny.requireAll("lifetime")

function EphemeralSystem:process(e, dt)
    e.lifetime = e.lifetime - dt
    if e.lifetime <= 0 then
        world:remove(e)
    end
end

return EphemeralSystem

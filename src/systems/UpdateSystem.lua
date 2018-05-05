local UpdateSystem = Tiny.processingSystem(Class "UpdateSystem")

UpdateSystem.filter = Tiny.requireAll("update")

function UpdateSystem:process(e, dt)
	e:update(dt)
end

return UpdateSystem


CommanderApplyModBase = function()
	for k, device in ipairs(Weapons) do
		device.MetalReclaimMax = 1
	end
end
RegisterApplyMod(CommanderApplyModBase)
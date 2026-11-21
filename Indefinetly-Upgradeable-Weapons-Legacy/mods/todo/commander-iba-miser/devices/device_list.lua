
CommanderApplyModBase = function()
	for k, device in ipairs(Devices) do
		device.MetalReclaimMax = 1
	end
end
RegisterApplyMod(CommanderApplyModBase)
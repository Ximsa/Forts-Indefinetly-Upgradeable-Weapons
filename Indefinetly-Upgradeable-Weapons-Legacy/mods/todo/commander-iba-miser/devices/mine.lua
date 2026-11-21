
CommanderApplyModBase = function()
	local multiplier = 1.1
	MetalProductionRate = multiplier*(MetalProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)
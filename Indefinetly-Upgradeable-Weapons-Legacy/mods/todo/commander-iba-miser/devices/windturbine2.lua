
CommanderApplyModBase = function()
	local multiplier = 1.1
	EnergyProductionRate = multiplier*(EnergyProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)
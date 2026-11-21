
CommanderApplyModBase = function()
	for k, material in ipairs(Materials) do
		material.MetalReclaim = material.MetalBuildCost
	end
end
RegisterApplyMod(CommanderApplyModBase)
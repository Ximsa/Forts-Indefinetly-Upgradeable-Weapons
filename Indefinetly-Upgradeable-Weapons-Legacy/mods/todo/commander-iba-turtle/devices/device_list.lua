repairstation = FindDevice("repairstation")
if repairstation then
	local multiplier = 0.75
	repairstation.MetalCost = multiplier*repairstation.MetalCost
	repairstation.EnergyCost = multiplier*repairstation.EnergyCost
end

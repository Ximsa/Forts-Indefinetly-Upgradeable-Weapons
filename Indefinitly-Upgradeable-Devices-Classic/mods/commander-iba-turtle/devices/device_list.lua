local upgradeCount = 64

function ChangeCost(Upgrades,multiplier)
    for k,v in pairs (Upgrades) do
        v.MetalCost = multiplier*v.MetalCost
        v.EnergyCost = multiplier*v.EnergyCost
    end
end

if repairstation then
	local multiplier = 0.75
    if repairstation.Upgrades then
        ChangeCost(repairstation.Upgrades,multiplier)
        for i = 2, upgradeCount do
            repairstationU = FindDevice("_repairstation" .. i)
            ChangeCost({repairstationU},multiplier)
            if repairstationU.Upgrades then
                ChangeCost(repairstationU.Upgrades,multiplier)
            end
        end
    end
end

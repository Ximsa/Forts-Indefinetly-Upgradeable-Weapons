shield = FindMaterial("shield")
upgradeCount = 64

if shield then
    shield.ForcedReflection = { "sniper2" }
    for i=2, upgradeCount do
        table.insert(shield.ForcedReflection,"_sniper2" .. tostring(i))
    end
end
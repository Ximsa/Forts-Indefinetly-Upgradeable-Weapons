ProjectileToAdd = {"mortar2","cannon","rocket","cannon20mm","howitzer"}

for k,v in pairs(ProjectileToAdd) do
    base = FindProjectile(v)
    if base then
        for i=2, upgradeCount do
            upgradeSaveName = "_" .. v .. tostring(i)
            table.insert(ProjectilesToUranium,upgradeSaveName)
            ProjectileEffects[upgradeSaveName] = ProjectileEffects[v]
            UraniumU = DeepCopy(FindProjectile("uranium" .. v))
            UraniumU.SaveName = "uranium" .. upgradeSaveName
            table.insert(Projectiles,UraniumU)
        end
    end
end

if active then
    for i=2, upgradeCount do
        AddEMPtoProjectile("_sniper2" .. tostring(i))
    end
end
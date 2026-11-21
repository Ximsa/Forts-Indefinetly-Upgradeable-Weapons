function ReplaceCompatibleGroupTypes(Group,previous,new)
    for k,v in pairs(Group) do
        if v == previous then
            Group[k] = new
        end
    end
end


local minigun = FindWeapon("minigun")
if minigun then
    local minigun2 = FindWeapon("minigun2")
    if minigun2 then
        minigun2.SaveName = "minigunAP"

        reloadTime["minigunAP"] = 10
        local tmp = modPaths["this"]
        modPaths["this"] = path

        addUpgrades(
          {
             {
                SaveName = "minigunAP",
                UpgradeMetal = 110,
                UpgradeEnergy = 240,
             },
          }
        )

        modPaths["this"] = tmp
        minigun2.SaveName = "minigun2"
        if minigun2.CompatibleGroupTypes then
            ReplaceCompatibleGroupTypes(minigun2.CompatibleGroupTypes,"minigunAP","minigun2")
        end
        for i = 2, upgradeCount do
            minigunU = FindWeapon("_minigunAP" .. i)
            if minigunU.CompatibleGroupTypes then
                ReplaceCompatibleGroupTypes(minigunU.CompatibleGroupTypes,"minigunAP","minigun2")
            end
        end
    end
end



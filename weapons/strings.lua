dofile(path .. "/lib/scalings.lua")
dofile(path .. "/lib/util.lua")


for _, weaponUpgrade in pairs(WeaponUpgrades) do
    local weapon_savename = weaponUpgrade.weapon_savename
    for level = 1, UpgradeCount do
        Weapon[weapon_savename .. "_" .. level] = (Weapon[weapon_savename] or L"") .. L" Level " .. level
        Weapon[weapon_savename .. "_" .. level .. "Tip2"] = Weapon[weapon_savename .. "Tip2"] or L""
    end
end

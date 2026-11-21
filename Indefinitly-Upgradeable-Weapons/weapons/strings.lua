-- register strings for all DLC weapons; strings for weapons that don't exist are harmless
local tmp_moonshot, tmp_dlc2 = moonshot, dlc2Var_Active
moonshot, dlc2Var_Active = true, true
dofile(path .. "/lib/scalings.lua")
moonshot, dlc2Var_Active = tmp_moonshot, tmp_dlc2
dofile(path .. "/lib/util.lua")

for _, weapon_upgrade in pairs(WeaponUpgrades) do
    local weapon_savename = weapon_upgrade.weapon_savename
    for level = FirstLevel, LastLevel do
        Weapon[weapon_savename .. "_" .. level] = (Weapon[weapon_savename] or L"") .. L" Level " .. level
        Weapon[weapon_savename .. "_" .. level .. "Tip2"] = Weapon[weapon_savename .. "Tip2"] or L""
    end
end

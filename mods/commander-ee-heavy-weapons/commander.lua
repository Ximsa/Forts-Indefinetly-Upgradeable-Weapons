-- appended to the commander's script: the damage icon for level weapons too, and the active "second chance" (instant
-- reload after a miss), which checks the fired weapon's name against WeaponsWithSecondChance
dofile(path .. "/lib/mark_level_weapons.lua")
if type(WeaponsWithSecondChance) == "table" then AddLevelNames(WeaponsWithSecondChance) end

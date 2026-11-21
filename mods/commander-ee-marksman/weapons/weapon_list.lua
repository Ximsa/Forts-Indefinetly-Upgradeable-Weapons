-- Eagle Eye's list hook lifts the snipers' group-size limit and lets snipers and AP snipers group together, by name,
-- which misses their levels. Give every sniper and AP sniper, base and level, the base group size and let it group
-- with all of the other kind. Its faster sniper build is left out: for a level weapon, build time is upgrade time
-- (llm/DESIGN.md, "Commanders"). This hook shares its globals with this mod's list hook.
local kinds = { sniper = "sniper2", sniper2 = "sniper" }
for name, other in pairs(kinds) do
   local base = FindWeapon(name)
   if base then
      local others = { other }
      for level = FirstLevel, LastLevel do table.insert(others, other .. "_" .. level) end
      local weapons = { base }
      for level = FirstLevel, LastLevel do
         local weapon = FindWeapon(name .. "_" .. level)
         if weapon then table.insert(weapons, weapon) end
      end
      for _, weapon in ipairs(weapons) do
         weapon.MaxWeaponGroupSize = base.MaxWeaponGroupSize
         weapon.CompatibleGroupTypes = weapon.CompatibleGroupTypes or {}
         for _, other_name in ipairs(others) do
            if weapon ~= base or other_name ~= other then table.insert(weapon.CompatibleGroupTypes, other_name) end
         end
      end
   end
end

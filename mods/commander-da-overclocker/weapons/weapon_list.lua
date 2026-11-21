-- Overdrive, the one exception to commander parity (llm/DESIGN.md, "Commanders"): its callback halves every upgrade's
-- time (BuildDuration = 0.5 x the target's BuildTimeComplete), which levels would make too strong. A level upgrade
-- under Overdrive takes m(level) of its normal time instead, with v1's curve m(n) = 1 - (n + 2^(1/order))^-order:
-- about 68 % at level 2, 85 % at level 10, 93 % at level 33. This hook runs before that callback, so it scales each
-- level weapon's BuildTimeComplete by m(level) / 0.5, once. This hook shares its globals with this mod's list hook.
local overdrive_multiplier = 0.5 -- Overdrive's own factor for upgrade times
local order = 0.75

local function UpgradeTimeFactor(level)
   return 1 - (level + 2 ^ (1 / order)) ^ -order
end

for _, weapon in ipairs(Weapons) do
   if weapon.OriginalWeapon and weapon.UpgradeNumber and weapon.BuildTimeComplete then
      local level = weapon.UpgradeNumber + 1
      weapon.BuildTimeComplete = weapon.BuildTimeComplete * UpgradeTimeFactor(level) / overdrive_multiplier
   end
end

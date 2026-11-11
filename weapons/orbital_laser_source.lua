-- Wraps the High Seas orbital laser's beam source (a hidden weapon; weapons/weapon_list.lua points its FileName here).
-- Runs the original file, then adds a copy of each beam ammunition entry for every level, with the level beam as
-- projectile and as tag, so that a level marker (which orders "<beam>_<level>") gets its level beam.
dofile(path .. "/lib/scalings.lua")
dofile(path .. "/lib/util.lua")

local mod_path = path
path = OrbitalLaserSource.mod
dofile(OrbitalLaserSource.file)
path = mod_path
-- Forts runs other mods' overlays only when it loads the original itself; replay them (they add the ammunition)
for _, overlay in ipairs(OrbitalLaserSource.overlays or {}) do
   path = overlay.mod
   dofile(overlay.mod .. "/" .. overlay.file)
   path = mod_path
end

if type(dlc2_Ammunition) == "table" then
   local base_entries = DeepCopy(dlc2_Ammunition)
   for level = FirstLevel, LastLevel do
      for _, entry in ipairs(base_entries) do
         if entry.Projectile and OrbitalLaserSource.beams[entry.Projectile] then
            local level_entry = DeepCopy(entry)
            level_entry.Projectile = entry.Projectile .. "_" .. level
            if entry.Tag then level_entry.Tag = entry.Tag .. "_" .. level end
            table.insert(dlc2_Ammunition, level_entry)
         end
      end
   end
else
   Log("IUW: the orbital laser source " .. OrbitalLaserSource.file .. " has no dlc2_Ammunition; level beams won't fire")
end

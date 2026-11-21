-- Appended to Scattershot's commander.lua (`path` is this mod's root here): mark the level versions of its
-- WeaponsToMark with the focus icon too. Don't call MarkDevicesOnActive again: it saves the previous handlers in
-- globals (forts_OnDeviceCompleted, ...), so a second call makes them call themselves (stack overflow, 2026-11-21).
-- Add the names to the list it already watches instead; its layout isn't readable (scripts/forts.lua is compiled),
-- so fill both the array part and name keys.
if type(MarkDevicesOnActiveList) == "table" and WeaponsToMark then
   dofile(path .. "/lib/scalings.lua")
   local base_names = {} -- copied first: the list may be WeaponsToMark itself, which grows below
   for _, name in ipairs(WeaponsToMark) do table.insert(base_names, name) end
   for _, name in ipairs(base_names) do
      for level = FirstLevel, LastLevel do
         local level_name = name .. "_" .. level
         table.insert(MarkDevicesOnActiveList, level_name)
         MarkDevicesOnActiveList[level_name] = true
      end
   end
elseif Log then
   Log("IUW commander-bpo-scattershot: MarkDevicesOnActiveList not found, level weapons get no focus icon")
end

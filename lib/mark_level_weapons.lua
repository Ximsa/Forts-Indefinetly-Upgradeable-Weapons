-- For a commander sub-mod's commander.lua (appended to the commander's script; `path` is this mod's root there):
-- give the level versions of the commander's WeaponsToMark its icon too. Commanders mark weapons in two ways:
-- - the game's MarkDevicesOnActive (Scattershot, Seep), which keeps its own list, MarkDevicesOnActiveList. Don't call
--   it again: it saves the previous handlers in globals (forts_OnDeviceCompleted, ...), so a second call makes them call
--   themselves (stack overflow, 2026-11-21).
-- - their own handlers that loop over WeaponsToMark when they run (Hurricane).
-- So add the level names to both lists. Their layout isn't readable (scripts/forts.lua is compiled), so fill both the
-- array part and name keys. A commander without either list (Buster) gets nothing.
local lists = {}
if type(WeaponsToMark) == "table" then table.insert(lists, WeaponsToMark) end
if type(MarkDevicesOnActiveList) == "table" and MarkDevicesOnActiveList ~= WeaponsToMark then
   table.insert(lists, MarkDevicesOnActiveList)
end

if #lists > 0 then
   dofile(path .. "/lib/scalings.lua")
   local base_names = {} -- copied first: the lists grow below
   for _, name in ipairs(WeaponsToMark or {}) do table.insert(base_names, name) end
   for _, list in ipairs(lists) do
      for _, name in ipairs(base_names) do
         for level = FirstLevel, LastLevel do
            local level_name = name .. "_" .. level
            table.insert(list, level_name)
            list[level_name] = true
         end
      end
   end
end

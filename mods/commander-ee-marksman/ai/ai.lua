-- Eagle Eye's ai/ai.lua lets the AI use the minigun against projectiles, by name; give the level miniguns the same
-- entry (only this one: copying many AI tables made the game hang, llm/PLAN.md step 4).
local function AddLevels()
   if not FirstLevel then
      local tmp = path
      path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- this mod's root, which scalings.lua expects
      dofile(path .. "/lib/scalings.lua")
      path = tmp
   end
   for level = FirstLevel, LastLevel do
      if AntiAirAddContextButton then AntiAirAddContextButton["minigun_" .. level] = AntiAirAddContextButton["minigun"] end
   end
end
local ok, err = pcall(AddLevels)
if not ok and Log then Log("IUW commander-ee-marksman ai/ai.lua: " .. tostring(err)) end

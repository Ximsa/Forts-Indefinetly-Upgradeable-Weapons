-- Shockenaugh's ai/ai.lua makes the shotgun an anti-air weapon by name; give the level shotguns the same two entries
-- (only these: copying many AI tables made the game hang, llm/PLAN.md step 4).
local function AddLevels()
   if not FirstLevel then
      local tmp = path
      path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- this mod's root, which scalings.lua expects
      dofile(path .. "/lib/scalings.lua")
      path = tmp
   end
   for level = FirstLevel, LastLevel do
      local name = "shotgun_" .. level
      if AntiAirAddContextButton then AntiAirAddContextButton[name] = AntiAirAddContextButton["shotgun"] end
      if data and data.AntiAirPower then data.AntiAirPower[name] = data.AntiAirPower["shotgun"] end
   end
end
local ok, err = pcall(AddLevels)
if not ok and Log then Log("IUW commander-bpo-shockenaugh ai/ai.lua: " .. tostring(err)) end

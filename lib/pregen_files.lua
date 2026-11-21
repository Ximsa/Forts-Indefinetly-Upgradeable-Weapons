---@diagnostic disable: need-check-nil

moonshot = true
dlc2Var_Active = true
dofile("scalings.lua")

for _, weaponUpgrade in ipairs(WeaponUpgrades) do
   local mod_path = weaponUpgrade.mod
   local weapon_filename = weaponUpgrade.weapon_filename
   local file_path = "../weapons/" .. weapon_filename:sub(1, -5) .. "/"
   print(file_path)
   os.execute("mkdir \"" .. file_path .. "\"")
   for level = FirstLevel, LastLevel do
      local file_name = weapon_filename:sub(1, -5) .. "_" .. level .. ".lua"
      local file_contents =
          "ModPath = \"" .. mod_path .. "\"\n" ..
          "OriginalFileName = \"" .. weapon_filename .. "\"\n" ..
          "UpgradeLevel = " .. level .. "\n" ..
          "dofile(path .. \"/weapons/weapon_file_upgrade.lua\")"
      print(file_path .. file_name)
      local file = io.open(file_path .. file_name, "w")
      file:write(file_contents)
      file:close()
   end
end

-- Commander sub-mods (DESIGN.md, "Commanders"): the game runs a commander's overlay of a weapon file only for the base
-- file. For each overlay listed here, write one file per level, mods/commander-<x>/mods/1369514837/weapons/<w>/<w>_<level>.lua,
-- that runs the level weapon file again with the overlay replayed (ReplayCommanderOverlays). The list is kept by hand
-- (paths inside the game's data, from the survey in PLAN.md, step 5); the game's files aren't read here.
CommanderOverlayFiles = {
   ["commander-bpo-scattershot"] = {
      "weapons/machinegun.lua",
      "weapons/minigun.lua",
      "weapons/snipertower.lua",
      "weapons/sniper-ap.lua",
      "mods/weapon_pack/weapons/flak.lua",
      "mods/weapon_pack/weapons/shotgun.lua",
      "mods/weapon_pack/weapons/rocket.lua",
      "mods/weapon_pack/weapons/20mmcannon.lua",
      "mods/dlc1_weapons/weapons/buzzsaw.lua",
   },
   ["commander-bpo-seep"] = {
      "weapons/missileswarm.lua",
      "weapons/missileswarm_inverted.lua",
      "weapons/missilelauncher.lua",
      "weapons/missilelauncher_inverted.lua",
      "mods/weapon_pack/weapons/rocket.lua",
      "mods/weapon_pack/weapons/rocketemp.lua",
   },
}

for commander, files in pairs(CommanderOverlayFiles) do
   local commander_mod = "mods/" .. commander
   for _, file_name in ipairs(files) do
      local weapon = file_name:match("([^/]+)%.lua$") -- the weapon file's name is the level weapon's folder
      local out_path = "../" .. commander_mod .. "/mods/1369514837/weapons/" .. weapon .. "/"
      os.execute('mkdir "' .. out_path:gsub("/", "\\") .. '" 2>nul')
      for level = FirstLevel, LastLevel do
         local file = io.open(out_path .. weapon .. "_" .. level .. ".lua", "w")
         file:write('CommanderOverlays = { { mod = "' .. commander_mod .. '", file = "' .. commander_mod .. "/" .. file_name .. '" } }\n' ..
            [[path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root]] .. "\n" ..
            [[dofile(path .. "/weapons/weapon_file_upgrade.lua")]] .. "\n")
         file:close()
      end
      print(out_path)
   end
end

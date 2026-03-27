---@diagnostic disable: need-check-nil

moonshot = true
dofile("scalings.lua")

for _, weaponUpgrade in ipairs(WeaponUpgrades) do
   local mod_path = weaponUpgrade.mod
   local weapon_filename = weaponUpgrade.weapon_filename
   local file_path = "../weapons/" .. weapon_filename:sub(1, -5) .. "/"
   print(file_path)
   os.execute("mkdir \"" .. file_path .. "\"")
   for level = 1, UpgradeCount do
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

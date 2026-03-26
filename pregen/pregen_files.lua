-- tested on windows only

dofile("scalings.lua")

for _, v in ipairs(WeaponUpgrades) do
   mod_path, weapon_savename, weapon_filename, projectile_savenames = unpack(v)
   file_path = "../weapons/" .. weapon_filename:sub(1,-5) .. "/"
   print(file_path)
   os.execute("mkdir \"" .. file_path .. "\"")
   for level = 1, UpgradeCount do
      file_name = weapon_filename:sub(1,-5) .. "_" .. level .. ".lua"
      file_contents =
	 "ModPath = \"" .. mod_path .. "\"\n" ..
	 "OriginalFileName = \"" .. weapon_filename .. "\"\n" ..
	 "UpgradeLevel = " .. level .. "\n" ..
	 "dofile(path .. \"/weapons/weapon_file_upgrade.lua\")"
      print(file_path .. file_name)
      file = io.open(file_path .. file_name, "w")
      file:write(file_contents)
      file:close()
   end
end

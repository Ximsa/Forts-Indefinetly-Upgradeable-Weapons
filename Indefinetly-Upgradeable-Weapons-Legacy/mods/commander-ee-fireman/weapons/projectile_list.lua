CommanderApplyMod1369514837 = function()
   for i = 2, 64 do
      local cannon = FindProjectile("_cannon" .. i)
      if cannon then
	 cannon.ProjectileIncendiary = true
	 cannon.IncendiaryRadius = 50
	 cannon.IncendiaryRadiusHeated = 60
	 cannon.IncendiaryOffset = -10
	 cannon.AlwaysIncendiary = true
      end
      local cannon20mm = FindProjectile("_cannon20mm" .. i)
      if cannon20mm then
	 cannon20mm.ProjectileIncendiary = true
      end
   end
end
RegisterApplyMod(CommanderApplyMod1369514837)

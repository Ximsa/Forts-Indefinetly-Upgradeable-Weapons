for i = 2, 64 do
   local rocket = FindProjectile("_rocket" .. i)
   if rocket then
      if active then
	 MakeMissileErratic(rocket)
	 rocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
      end
   end
end

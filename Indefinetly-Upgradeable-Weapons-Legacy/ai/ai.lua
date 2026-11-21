local upgrades = 64
local projectiles = {"_howitzer","_mortar2", "_rocket", "_silomissile2", "_grenade", "__cannon",}
local aaWeapons = {"_aabeam"}

for i = 2, upgrades do
   for _,v in ipairs(projectiles) do
      ShootableProjectile[v .. i] = true
   end
   for _,v in ipairs(aaWeapons) do
      data.AntiAirErrorStdDev[v .. i] = Balance(1, 0.125)
      data.AntiAirOpenDoor[v .. i] = data.AntiAirOpenDoor["machinegun"]
      data.AntiAirFireProbability[v .. i] = Balance(0.8, 0.9)
      AntiAirFireProbabilityHumanAssist[v .. i] = data.AntiAirFireProbability[v .. i]
   end
end

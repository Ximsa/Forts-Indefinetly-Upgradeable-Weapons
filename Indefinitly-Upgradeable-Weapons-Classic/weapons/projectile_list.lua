-- for better moding
NormalProjectiles = DeepCopy(Projectiles)

UpgradeCount = 64
upgradeCount = UpgradeCount -- commander compatibility

function AddUpgrades(Upgrades)
   for _, Upgrade in pairs(Upgrades) do
      local BaseWeapon = FindProjectile(Upgrade.SaveName)
      if BaseWeapon then
         for Level = 2, UpgradeCount do
            Projectiles[#Projectiles + 1] = InheritType(
               BaseWeapon,
               nil,
               {
                  SaveName = "_" .. BaseWeapon.SaveName .. Level,
                  Impact = (1+0.125*(Level-1)) * (BaseWeapon.Impact or 0),
                  ProjectileDamage = (1+0.125*(Level-1)) * (BaseWeapon.ProjectileDamage or 0),
                  ProjectileSplashDamage = (1+0.125*(Level-1)) * (BaseWeapon.ProjectileSplashDamage or 0),
                  ProjectileSplashDamageMaxRadius = (1+0.125*math.sqrt(Level-1)) * (BaseWeapon.ProjectileSplashDamageMaxRadius or 0),
                  ProjectileSplashMaxForce = (1+0.125*(Level-1)) * (BaseWeapon.ProjectileSplashMaxForce or 0),
                  PenetrationDamage = (1+0.125*(Level-1)) * (BaseWeapon.PenetrationDamage or 0),
                  EMPRadius = (1+0.2*math.sqrt(Level-1)) * (BaseWeapon.EMPRadius or 0),
                  EMPDuration = (1+0.0625*(Level-1)) * (BaseWeapon.EMPDuration or 0),
                  FieldRadius = (1+0.5*math.sqrt(Level-1)) * (BaseWeapon.FieldRadius or 0),
                  FieldStrengthMax = (1+0.75*(Level-1)) * (BaseWeapon.FieldStrengthMax or 0),
                  FieldStrengthFalloffPower = 0.9*(BaseWeapon.FieldStrengthFalloffPower or 0),
                  RayDamage = (1+0.125*(Level-1)) * (BaseWeapon.RayDamage or 0),
                  RayLength = (1+0.1*(Level-1)) * (BaseWeapon.RayLength or 0),
               }
            )
            -- special treatment for cannoncannon
            if Upgrade.Special and Upgrade.Special == "cannoncannon" then
               for _,v in pairs(Projectiles[#Projectiles].Effects.Age) do
                  v.Projectile.Type = "_cannon" .. j
               end
            end
         end
      end
   end
end
function addUpgrades(Upgrades)
	AddUpgrades(Upgrades)
end


function AddFieldUpgrades(saveName,growthMultiplier,UpdateTrail)
   local Field = FindProjectile(saveName)
   if not Field then return end
   local baseValues = {}
   if Field.FieldRadius then
      baseValues["FieldRadius"] = Field.FieldRadius
   end
   if Field.FieldStrengthMax then
      baseValues["FieldStrengthMax"] = Field.FieldStrengthMax
   end
   if Field.ProjectileThickness then
      baseValues["ProjectileThickness"] = Field.ProjectileThickness
   end
   for i=2,UpgradeCount do
      local FieldUpgrade = DeepCopy(Field)
      FieldUpgrade.SaveName = FieldUpgrade.SaveName .. tostring(i)
      if UpdateTrail then
         FieldUpgrade.TrailEffect = path .. "/effects/" .. saveName .. tostring(i) .. ".lua"
      end
      for k,v in pairs(baseValues) do
         FieldUpgrade[k] = v*(1+growthMultiplier*(i-1))
      end
      table.insert(Projectiles, FieldUpgrade)
   end
end

function AddProjectileApplyingFieldUpgrade(saveName)
   local Projectile = FindProjectile(saveName)
   if not Projectile then return end
   for i=2,UpgradeCount do
      local ProjectileUpgrade = DeepCopy(Projectile)
      ProjectileUpgrade.SaveName = ProjectileUpgrade.SaveName .. tostring(i)
      if ProjectileUpgrade.Effects.Age then
         for k,v in pairs(ProjectileUpgrade.Effects.Age) do
            v.Projectile.Type = v.Projectile.Type .. tostring(i)
         end
      end
      for k,v in pairs(ProjectileUpgrade.Effects.Impact) do
         if k ~= "firebeam" and type(v) == "table" and v.Projectile then
            v.Projectile.Type = v.Projectile.Type .. tostring(i)
         end
      end
      table.insert(Projectiles, ProjectileUpgrade)
   end
end

function AddUpgradesForFieldProjectiles(ListOfFieldsWeapons)
   for k,v in pairs(ListOfFieldsWeapons) do
      AddProjectileApplyingFieldUpgrade(v.SaveName)
      AddFieldUpgrades(v.FieldName,v.GrowthMultiplier,v.UpdateTrail)
   end
end

-- BEGIN vanilla
AddUpgrades(
   {
      {
         SaveName = "minigun"
      },
      {
         SaveName = "sniper2"
      },
      {
         SaveName = "mortar2"
      },
      {
         SaveName = "cannon"
      },
   }
)
-- END vanilla

-- BEGIN ToG
if FindProjectile("rocket") then -- assumption: Has rockets <=> ToG Enabled
   AddUpgrades( 
      {
         {
            SaveName = "shotgun"
         },
         {
            SaveName = "rocket"
         },
         {
            SaveName = "cannon20mm"
         },
      }
   )
end
-- END ToG

-- BEGIN Moonshot
if moonshot and not FindProjectile("_howitzer2") then -- assumption: already has _howitzer2 <=> iuw - moonshot addon loaded
   AddUpgrades( 
      {
         {
            SaveName = "howitzer"
         },
         {
            SaveName = "buzzsaw"
         },
      }
   )
   AddUpgradesForFieldProjectiles(
      {
         { SaveName = "magnabeam", FieldName = "magneticfield", GrowthMultiplier = 0.1, UpdateTrail = false},
         { SaveName = "smokebomb", FieldName = "smoke", GrowthMultiplier = 0.1, UpdateTrail = true},
      }
   )
end
-- END Moonshot

-- BEGIN Other Mods
-- BEGIN Tanya
if FindProjectile("flamegun") then--Has flamegun <=> Tanya Enabled
   AddUpgrades( 
      {
         {
            SaveName = "apflak0",
         },
         {
            SaveName = "artillery20mm",
         },
         {
            SaveName = "atomcannon",
         },
         {
            SaveName = "cannon88he",
         },
         {
            SaveName = "grenade",
         },
         {
            SaveName = "hellfirecannon",
         },
         {
            SaveName = "star",
         },
         {
            SaveName = "musket",
         },
         {
            SaveName = "railgun",
         },
         {
            SaveName = "silomissile2",
         },
         {
            SaveName = "sniperemp",
         },
         {
            SaveName = "sniperrifle",
         },
      }
   )
end
-- END Tanya 

-- BEGIN Big Friendly Cannon
if FindProjectile("bigcannon") then--Has bigcannon <=> Big Friendly Cannon Enabled
   if(_debug) then
      Log("Projectile_list: Big Friendly Cannon found")
   end

   AddUpgrades( 
      {
         {
            SaveName = "bigcannon",
         },
      }
   )
end
-- END Big Friendly Cannon

-- BEGIN Big Friendly Cannon Version 2
if FindProjectile("bigcannonv2") then --Has bigcannonv2 <=> Big Friendly Cannon Version 2 Enabled
   if(_debug) then
      Log("Projectile_list: Big Friendly Cannon Version 2 found")
   end

   AddUpgrades( 
      {
         {
            SaveName = "bigcannonv2",
         },
      }
   )
end
-- END Big Friendly Cannon Version 2

-- BEGIN Cannon Cannon
if FindProjectile("_cannon") then --Has _cannon <=> Cannon Cannon Enabled
   
   AddUpgrades( 
      {
         {
            SaveName = "_cannon",
            Special = "cannoncannon",
         },
      }
   )
end
-- END Cannon Cannon
-- END Other Mods

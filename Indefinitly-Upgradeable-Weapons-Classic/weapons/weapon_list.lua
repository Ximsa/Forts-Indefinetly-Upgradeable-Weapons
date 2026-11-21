-- 


-- constants
UpgradeCount = 64
upgradeCount = UpgradeCount -- commander compatibility
modPaths= {["this"] = path} -- --"--
RepaircostMultiplier = 0.75
NormalWeapons = DeepCopy(Weapons)

-- to select a apropiate upgrade time
ReloadTime = 
   {
      --vanilla
      ["minigun"] = 6,
      ["sniper2"] = 5,
      ["mortar2"] = 9,
      ["missile2"] = 21,
      ["shotgun"] = 9,
      ["rocket"] = 12,
      ["cannon20mm"] = 26,
      ["cannon"] = 26,
      ["firebeam"] = 14,
      ["laser"] = 24,
      -- Moonshot
      ["buzzsaw"] = 9,
      ["smokebomb"] = 9,
      ["howitzer"] = 26,
      ["magnabeam"] = 28,
      -- Tanya
      ["flamegun"] = 6,
      ["apflak"] = 5,
      ["artillery20mm"] = 26.0,
      ["atomcannon"] = 125.0,
      ["flak88"] = 5.5,
      ["grenadegun"] = 25,
      ["hellfirecannon"] = 26.0,
      ["megalaser"] = 50.0,
      ["mortarcannon"] = 10,
      ["musket"] = 3.5,
      ["ninja"] = 2.1,
      ["penguincannon"] = 3.5,
      ["pigeonshooter"] = 6.5,
      ["plane"] = 21.0,
      ["railgun"] = 9.0,
      ["silolauncher2"] = 23.0,
      ["smogbeam"] = 24.0,
      ["sniperemp"] = 30.0,
      ["sniperrifle"] = 0.9,
      ["warheadcannon"] = 26.0,
      -- Endo
      -- Big Friendly Cannon
      ["bigcannon"] = 40.0,
      -- Big Friendly Cannon Version 2
      ["bigcannonv2"] = 90.0,
      -- AA Laser
      ["aabeam"] = 5,
      -- Cannon Cannon
      ["_cannon"] = 30,
   }
reloadTime = ReloadTime

function AddUpgrade(Weapon,Upgrade)
   if not Weapon then Weapon = {} end
   if not Weapon.Upgrades then Weapon.Upgrades = {} end
   if not Upgrade then Upgrade = {} end
   table.insert(Weapon.Upgrades, Upgrade)
end

function ConcatTable(T1, T2) 
   for _, V in pairs(T2) do 
      table.insert(T1, V) 
   end 
end

function AddUpgrades(Upgrades)
   --iterate through "empty" weapon table
   for _, Upgrade in pairs(Upgrades) do
      BaseWeapon = FindWeapon(Upgrade.SaveName)
      if BaseWeapon then
         AddUpgrade(BaseWeapon,
                    {
                       Enabled = true,
                       SaveName = "_".. BaseWeapon.SaveName .."2",
                       MetalCost = Upgrade.UpgradeMetal,
                       EnergyCost = Upgrade.UpgradeEnergy,
                    }
         )
         -- generate compatible types list
         CompatibleGroupTypes = {BaseWeapon.SaveName}
         for Level=2, UpgradeCount do
            table.insert(CompatibleGroupTypes, "_".. BaseWeapon.SaveName .. Level)
         end
         ConcatTable(BaseWeapon.CompatibleGroupTypes or {}, CompatibleGroupTypes or {})
         -- add all upgrades
         local PrevWeapon = BaseWeapon
         for Level=2,UpgradeCount do
            local UpgradeMetalCost = Upgrade.UpgradeMetal * (1+(Level/6))
            local UpgradeEnergyCost = Upgrade.UpgradeEnergy * (1+(Level/6))
            Weapons[#Weapons+1] = InheritType(
               BaseWeapon,
               nil,
               {
                  Enabled = false,
                  SaveName = "_"..BaseWeapon.SaveName .. Level,
                  FileName = path .. "/weapons/".. BaseWeapon.SaveName .."/_".. BaseWeapon.SaveName .. Level .. ".lua",
                  Prerequisite = "upgrade",
                  BuildTimeIntermediate = ReloadTime[BaseWeapon.SaveName],
                  BuildTimeComplete = ReloadTime[BaseWeapon.SaveName],
                  MetalCost = PrevWeapon.MetalCost + UpgradeMetalCost,
                  EnergyCost = PrevWeapon.MetalCost + UpgradeEnergyCost,
                  MetalRepairCost = (PrevWeapon.MetalCost + UpgradeMetalCost)*RepaircostMultiplier,
                  EnergyRepairCost = (PrevWeapon.MetalCost + UpgradeEnergyCost)*RepaircostMultiplier,
                  Upgrades =
                     {
                        {
                           Enabled = true,
                           SaveName = ("_" .. BaseWeapon.SaveName .. (Level+1)),
                           MetalCost = UpgradeMetalCost,
                           EnergyCost = UpgradeEnergyCost,
                        },
                     },
                  CompatibleGroupTypes = CompatibleGroupTypes,
                  -- special field for overdrive adjustment
                  UpgradeNumber = Level,
                  -- makes it easier to alter
                  OriginalWeapon = BaseWeapon.SaveName,
               }
            )
            PrevWeapon = Weapons[#Weapons]
         end
         -- delete last upgrade
         FindWeapon("_"..BaseWeapon.SaveName .. UpgradeCount).Upgrades = {}
      end
   end       
end
function addUpgrades(Upgrades)
   AddUpgrades(Upgrades)
end
-- BEGIN vanilla
AddUpgrades(
   {
      {
         SaveName = "minigun",
         UpgradeMetal = 110,
         UpgradeEnergy = 240,
      },
      {
         SaveName = "sniper2",
         UpgradeMetal = 120,
         UpgradeEnergy = 480,
      },
      {
         SaveName = "mortar2",
         UpgradeMetal = 170,
         UpgradeEnergy = 620,
      },
      {
         SaveName = "cannon",
         UpgradeMetal = 400,
         UpgradeEnergy = 2200,
      },
      {
         SaveName = "laser",
         UpgradeMetal = 400,
         UpgradeEnergy = 2000,
      },
   }
)

--BEGIN ToG
if FindWeapon("shotgun") then -- shotgun found <=> ToG enabled
   AddUpgrades(
      {
         {
            SaveName = "shotgun",
            UpgradeMetal = 140,
            UpgradeEnergy = 700,
         },
         {
            SaveName = "rocket",
            UpgradeMetal = 190,
            UpgradeEnergy = 900,
         },
         {
            SaveName = "cannon20mm",
            UpgradeMetal = 200,
            UpgradeEnergy = 900,
         },
         {
            SaveName = "firebeam",
            UpgradeMetal = 220,
            UpgradeEnergy = 1500,
         },
      }
   )
end
--END ToG

--BEGIN Moonshot
if moonshot and not FindWeapon("_howitzer2") then -- assumption: already has _howitzer2 <=> iuw - moonshot addon loaded
   AddUpgrades(
      {
         {
            SaveName = "buzzsaw",
            UpgradeMetal = 150,
            UpgradeEnergy = 600,
         },
         {
            SaveName = "smokebomb",
            UpgradeMetal = 140,
            UpgradeEnergy = 700,
         },
         {
            SaveName = "howitzer",
            UpgradeMetal = 430,
            UpgradeEnergy = 3000,
         },
         {
            SaveName = "magnabeam",
            UpgradeMetal = 160,
            UpgradeEnergy = 900,
         },
      }
   )
end
--END Moonshot

--BEGIN Tanya
if FindWeapon("bazooka") then -- Has bazooka <=> Tanya Enabled
   AddUpgrades(
      {
         {
            SaveName = "flamegun",
            UpgradeMetal = 30,
            UpgradeEnergy = 100,
         },
         {
            SaveName = "apflak",
            UpgradeMetal = 100,
            UpgradeEnergy = 300,
         },
         -- { -- seems to be removed/renamed, stopping upgrades
         -- SaveName = "artillery20mm",
         -- UpgradeMetal = 160,
         -- UpgradeEnergy = 500,
         -- },
         {
            SaveName = "atomcannon",
            UpgradeMetal = 900,
            UpgradeEnergy = 1600,
         },
         {
            SaveName = "flak88",
            UpgradeMetal = 400,
            UpgradeEnergy = 1000,
         },
         {
            SaveName = "grenadegun",
            UpgradeMetal = 320,
            UpgradeEnergy = 800,
         },
         {
            SaveName = "hellfirecannon",
            UpgradeMetal = 270,
            UpgradeEnergy = 750,
         },
         {
            SaveName = "megalaser",
            UpgradeMetal = 600,
            UpgradeEnergy = 1200,
         },
         {
            SaveName = "mortarcannon",
            UpgradeMetal = 180,
            UpgradeEnergy = 500,
         },
         {
            SaveName = "pigeonshooter",
            UpgradeMetal = 150,
            UpgradeEnergy = 290,
         },
         {
            SaveName = "ninja",
            UpgradeMetal = 100,
            UpgradeEnergy = 260,
         },
         -- --{
         -- --       SaveName = "penguincannon",
         -- --       UpgradeMetal = 100,
         -- --       UpgradeEnergy = 260,
         -- --},
         -- --{
         -- --       SaveName = "plane",
         -- --       UpgradeMetal = 170,
         -- --       UpgradeEnergy = 400,
         -- --},
         {
            SaveName = "railgun",
            UpgradeMetal = 240,
            UpgradeEnergy = 600,
         },
         {
            SaveName = "silolauncher2",
            UpgradeMetal = 200,
            UpgradeEnergy = 500,
         },
         -- --{
         -- --       SaveName = "smogbeam",
         -- --       UpgradeMetal = 200,
         -- --       UpgradeEnergy = 350,
         -- --},
         {
            SaveName = "sniperemp",
            UpgradeMetal = 120,
            UpgradeEnergy = 340,
         },
         {
            SaveName = "sniperrifle",
            UpgradeMetal = 100,
            UpgradeEnergy = 230,
         },
         -- --{
         -- --       SaveName = "warheadcannon",
         -- --       UpgradeMetal = 200,
         -- --       UpgradeEnergy = 600,
         -- --},
      }
   )
end
--END Tanya

--BEGIN Big friendly cannon
if FindWeapon("bigcannon") then -- Has bigcannon <=> Big Friendly Cannon Enabled
   AddUpgrades(
      {
         {
            SaveName = "bigcannon",
            UpgradeMetal = 300,
            UpgradeEnergy = 2400,
         },
      }
   )
end
--END Big friendly cannon

--BEGIN Big friendly cannon version 2
if FindWeapon("bigcannonv2") then -- Has bigcannonv2 <=> Big Friendly Cannon Version 2 Enabled
   AddUpgrades(
      {
         {
            SaveName = "bigcannonv2",
            UpgradeMetal = 500,
            UpgradeEnergy = 7000,
         },
      }
   )
end
--END Big friendly cannon

--BEGIN AAbeam
if FindWeapon("aabeam") then -- Has aabeam <=> aa-beam enabled
   AddUpgrades(
      {
         {
            SaveName = "aabeam",
            UpgradeMetal = 100,
            UpgradeEnergy = 500,
         },
      }
   )
end
--END AAbeam

--BEGIN CannonCannon
if FindWeapon("_cannon") then -- has _cannon <=> cannon cannon enabled
   AddUpgrades(
      {
         {
            SaveName = "_cannon",
            UpgradeMetal = 700,
            UpgradeEnergy = 3000,
         },
      }
   )
   --compatibility
   local x = FindWeapon("_cannon")
   if x then x.Enabled = true end
end
--END CannonCannon 

--BEGIN AP/HE/APCR Cannons
if FindWeapon("cannonHE") then -- has cannonHE <=> AP/HE/APCR Cannons enabled
   local Cannon = FindWeapon("cannon")
   if Cannon then
      local CannonUpgrades = cannon.Upgrades
      if CannonUpgrades then
         local Tmp = {FindWeapon("cannonAP"), FindWeapon("cannonHE"), FindWeapon("cannonAPCR")}
         for _, Weapon in pairs(Tmp) do
            if Weapon then
               Weapon.Upgrades = CannonUpgrades
            end
         end
      end
   end
end

-- BEGIN April Fools
function SetAnyUpgradeSaveName(Weapon, SaveName)
   for _, Upgrade in pairs(Weapon.Upgrades) do
      Upgrade.SaveName = SaveName
      return
   end
end
function GetAnyUpgradeSaveName(Weapon)
   for _, Upgrade in pairs(Weapon.Upgrades) do
      return Upgrade.SaveName
   end
   -- empty upgrade table: return a compatible Weapon SaveName
   while true do
      WeaponB = Weapons[(Rand() % #Weapons) + 1]
      if WeaponB.BuildOnGroundOnly == Weapon.BuildOnGroundOnly then
         return WeaponB.SaveName
      end
   end
end
-- POSIX.1-2001 example - modified to fit lua
local Next = 1
function SRand(Seed) -- initializes seed for random generator
   Next = Seed
end
function Rand() -- returns random integer between 0 and 32767
   Next = (Next * 909091 + 12345) % 71717117 -- lua doesn't like/has integer overflows, so we just apply modulo
   return math.floor((Next/65536) % 32768)
end

function Fools()
   local Shuffles = #Weapons * 4
   SRand(#Weapons * 694201337)
   local Hits = {}
   for I = 1, Shuffles do
      local RandA = (Rand() % #Weapons) + 1 -- returns a random value in range [1;#Weapons]
      local RandB = (Rand() % #Weapons) + 1 -- returns a random value in range [1;#Weapons]
      Hits[RandA] = true
      Hits[RandB] = true
      local WeaponA = Weapons[RandA]
      local WeaponB = Weapons[RandB]
      if WeaponA.SaveName ~= WeaponB.SaveName
         and WeaponA.Upgrades
         and WeaponB.Upgrades
         and WeaponB.BuildOnGroundOnly == WeaponA.BuildOnGroundOnly
      then
         -- since Upgrades can be non-array (whyyyyy?) we need to use functions to get/set elements.
         local Tmp = GetAnyUpgradeSaveName(WeaponA)
         SetAnyUpgradeSaveName(WeaponA, GetAnyUpgradeSaveName(WeaponB))
         SetAnyUpgradeSaveName(WeaponB, Tmp)
      end
   end
   Log("Mysterious Rate Of Doom: " .. math.floor(#Hits*100 / #Weapons ) .. "%%")
end
--Fools()
-- End April Fools

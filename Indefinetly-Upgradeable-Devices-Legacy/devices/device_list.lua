local upgradecount = 64
local repaircostMultiplier = 1.0
local _debug = false

local modPaths = 
   {
      ["this"] = path,
      ["tanya"] = path .. "/../1492181905",
      ["endo"] = path .. "/../1294907007",
      ["generator"] = path .. "/../1295107278",
   }


function addUpgrade(Device, Upgrade, Index)
   if not Device then Device = {} end
   if not Device.Upgrades then Device.Upgrades = {} end
   if not Upgrade then Upgrade = {Enabled = false} end
   if not Upgrade.SaveName then Upgrade.SaveName = "none" end
   if not Index then Index = Upgrade.SaveName end
   Device.Upgrades[Index] = Upgrade
end

function addUpgrades(upgrades)
   for k,v in ipairs(upgrades) 
   do
      generic_base = FindDevice(v.SaveName)
      if generic_base 
      then 
         if _debug then Log("Device_list: Base: " .. generic_base.SaveName) end
         generic_upgradeMetalCost = v.metalUpgrade
         generic_upgradeEnergyCost = v.energyUpgrade
         
         addUpgrade(generic_base, 
                    {
                       Enabled = true,
                       SaveName = "_"..generic_base.SaveName.."2",
                       MetalCost = generic_upgradeMetalCost,
                       EnergyCost = generic_upgradeEnergyCost,
         })

         for i=2,upgradecount do
            metalUpgrade = generic_upgradeMetalCost * (1+(i/8.0))
            energyUpgrade = generic_upgradeEnergyCost * (1+(i/8.0))
            prevDevice = FindDevice("_".. generic_base.SaveName .. (i-1)) or generic_base
            Devices[#Devices+1] = InheritType(
               generic_base,
               nil,
               {
                  Enabled = false,
                  SaveName = "_"..generic_base.SaveName .. i,
                  FileName = modPaths["this"] .. "/devices/".. generic_base.SaveName .."/_".. generic_base.SaveName .. i .. ".lua",
                  Prerequisite = "upgrade",
                  BuildTimeIntermediate = v.buildTime,
                  BuildTimeComplete = v.buildTime,
                  MetalCost = prevDevice.MetalCost + metalUpgrade,
                  EnergyCost = prevDevice.MetalCost + energyUpgrade,
                  MetalRepairCost = metalUpgrade*repaircostMultiplier,
                  EnergyRepairCost = energyUpgrade*repaircostMultiplier,
                  Upgrades =
                     {
                        [("_" .. generic_base.SaveName .. (i+1))] =
                           {
                              Enabled = true,
                              SaveName = ("_".. generic_base.SaveName .. (i+1)),
                              MetalCost = metalUpgrade,
                              EnergyCost = energyUpgrade,
                           },
                     },
                  -- special field for overdrive adjustment
                  UpgradeNumber = i,
            })
            if _debug then Log("Device_list: " ..  modPaths["this"] .. "/devices/".. generic_base.SaveName .."/_".. generic_base.SaveName .. i .. ".lua") end
         end
         local lastUpgrade = FindDevice("_"..generic_base.SaveName .. upgradecount)
         if lastUpgrade then lastUpgrade.Upgrades = {} end
      end
   end
end

-- BEGIN vanilla

addUpgrades(
   {
      {
         SaveName = "turbine",
         metalUpgrade = 100.0,
         energyUpgrade = 700.0,
         buildTime = 15.0,
      },
      {
         SaveName = "mine",
         metalUpgrade = 50.0,
         energyUpgrade = 2000.0,
         buildTime = 15.0,
      },
      {
         SaveName = "store",
         metalUpgrade = 100.0,
         energyUpgrade = 150.0,
         buildTime = 15.0,
      },
      {
         SaveName = "battery",
         metalUpgrade = 50.0,
         energyUpgrade = 300.0,
         buildTime = 15.0,
      },
      {
         SaveName = "sandbags",
         metalUpgrade = 10.0,
         energyUpgrade = 300.0,
         buildTime = 5,
      },
})

-- compatibility:
local tmp = FindDevice("mine2")
if tmp
then 
   tmp.Upgrades =
      {
         ["_mine2"] =
            {
               Enabled = true,
               SaveName = "_mine2",
               MetalCost = 0,
               EnergyCost = 0,
            },
      }
end
tmp = nil

tmp = FindDevice("turbine2")
if tmp
then
   tmp.Upgrades =
      {
         ["_turbine2"] =
            {
               Enabled = true,
               SaveName = "_turbine2",
               MetalCost = 0,
               EnergyCost = 0,
            },
      }
end
tmp = nil
-- END vanilla

-- BEGIN repairstation
if FindDevice("repairstation") 
then
   addUpgrades(
      {
         {
            SaveName = "repairstation",
            metalUpgrade = 20,
            energyUpgrade = 150,
            buildTime = 5,
         }
   })
end
-- END repairstation

-- BEGIN other mods
--BEGIN Tanya
function addTanyaUpgrades()
   if(_debug)
   then
      Log("Device_list: Tanya detected, adding upgrades")
   end
   addUpgrades(
      {
         {
            SaveName = "derrick2",
            metalUpgrade = 200,
            energyUpgrade = 3000,
            buildTime = 15,
         },
         {
            SaveName = "antigravityreactor2",
            metalUpgrade = 150,
            energyUpgrade = 2000,
            buildTime = 10,
         },
         {
            SaveName = "tanya",
            metalUpgrade = 30,
            energyUpgrade = 400,
            buildTime = 10,
         },
   })
end
--END Tanya

--BEGIN Generator
function addGeneratorUpgrades()
   if(_debug)
   then
      Log("Device_list: Generator detected, adding upgrades")
   end
   addUpgrades(
      {
         {
            SaveName = "generator2",
            metalUpgrade = 100,
            energyUpgrade = 700,
            buildTime = 12.5,
         },
         {
            SaveName = "t_plant2",
            metalUpgrade = 120,
            energyUpgrade = 1000,
            buildTime = 15,
         },
   })
end
--END Generator

-- scan for mods
local hasTanya = FindDevice("antigravityreactor") ~= nil -- assumption: Has antigravityreactor <=> Tanya Enabled
local hasGenerator = FindDevice("t_plant") ~= nil -- assumption: Has t_plant <=> Generator Enabled

-- add upgrades for mods
if hasTanya then addTanyaUpgrades() end
if hasGenerator then addGeneratorUpgrades() end

--END other mods

-- BEGIN April Fools
function SetAnyUpgradeSaveName(Device, SaveName)
   for _, Upgrade in pairs(Device.Upgrades) do
      Upgrade.SaveName = SaveName
      return
   end
end
function GetAnyUpgradeSaveName(Device)
   for _, Upgrade in pairs(Device.Upgrades) do
      return Upgrade.SaveName
   end
   -- empty upgrade table: return a compatible Weapon SaveName
   while true do
      DeviceB = Devices[(Rand() % #Devices) + 1]
      if DeviceB.BuildOnGroundOnly == Device.BuildOnGroundOnly then
         return DeviceB.SaveName
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

function Fools() -- Shuffles upgrades
   local Shuffles = #Devices * 4
   SRand(#Devices * 694201337)
   local Hits = {}
   for I = 1, Shuffles do
      local RandA = (Rand() % #Devices) + 1 -- returns a random value in range [1;#Devices]
      local RandB = (Rand() % #Devices) + 1 -- returns a random value in range [1;#Devices]
      Hits[RandA] = true
      Hits[RandB] = true
      local DeviceA = Devices[RandA]
      local DeviceB = Devices[RandB]
      if DeviceA.SaveName ~= DeviceB.SaveName
         and DeviceA.Upgrades
         and DeviceB.Upgrades
         and DeviceB.BuildOnGroundOnly == DeviceA.BuildOnGroundOnly
      then
         -- since Upgrades can be non-array (whyyyyy?) we need to use functions to get/set elements.
         local Tmp = GetAnyUpgradeSaveName(DeviceA)
         SetAnyUpgradeSaveName(DeviceA, GetAnyUpgradeSaveName(DeviceB))
         SetAnyUpgradeSaveName(DeviceB, Tmp)
      end
   end
   Log("Mysterious Rate Of Greed: " .. math.floor(#Hits * 100 /  #Devices ) .. "%%")
end
--Fools()
-- End April Fools

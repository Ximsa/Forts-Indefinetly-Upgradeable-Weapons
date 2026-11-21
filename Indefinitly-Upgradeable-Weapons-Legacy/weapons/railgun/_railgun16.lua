local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head16"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 26000.0
MaxFireSpeed = 26000.0
EnergyFireCost = 3084.4166470210766
MetalFireCost = 102.81388823403587
ReloadTime = 7.875
Projectile = "_railgun16"
FireStdDev =0.0029924006171145427
FireStdDevAuto =0.0014962003085572714

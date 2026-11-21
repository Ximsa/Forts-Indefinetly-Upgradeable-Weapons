local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head5"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 21600.0
MaxFireSpeed = 21600.0
EnergyFireCost = 1547.1258598566055
MetalFireCost = 51.570861995220184
ReloadTime = 8.6484375
Projectile = "_railgun5"
FireStdDev =0.008537668192063383
FireStdDevAuto =0.004268834096031691

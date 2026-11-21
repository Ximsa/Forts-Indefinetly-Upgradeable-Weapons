local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head44"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 37200.0
MaxFireSpeed = 37200.0
EnergyFireCost = 8414.095604106555
MetalFireCost = 280.46985347021865
ReloadTime = 5.90625
Projectile = "_railgun44"
FireStdDev =0.00020750308181987157
FireStdDevAuto =0.00010375154090993578

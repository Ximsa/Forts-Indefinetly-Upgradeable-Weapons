local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head45"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 37600.0
MaxFireSpeed = 37600.0
EnergyFireCost = 8650.56584792072
MetalFireCost = 288.3521949306908
ReloadTime = 5.8359375
Projectile = "_railgun45"
FireStdDev =0.0001886391652907923
FireStdDevAuto =9.431958264539615e-05

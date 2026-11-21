local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head32"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 32400.0
MaxFireSpeed = 32400.0
EnergyFireCost = 5844.808711882562
MetalFireCost = 194.82695706275214
ReloadTime = 6.75
Projectile = "_railgun32"
FireStdDev =0.000651233560240545
FireStdDevAuto =0.0003256167801202725

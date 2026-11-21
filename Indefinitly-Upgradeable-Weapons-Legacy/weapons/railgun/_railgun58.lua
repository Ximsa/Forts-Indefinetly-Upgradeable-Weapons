local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head58"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 42800.0
MaxFireSpeed = 42800.0
EnergyFireCost = 12082.856446341337
MetalFireCost = 402.76188154471146
ReloadTime = 4.921875
Projectile = "_railgun58"
FireStdDev =5.464204680800385e-05
FireStdDevAuto =2.7321023404001927e-05

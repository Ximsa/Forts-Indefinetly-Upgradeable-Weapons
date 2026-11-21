local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head14"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 25200.0
MaxFireSpeed = 25200.0
EnergyFireCost = 2785.062860638658
MetalFireCost = 92.83542868795526
ReloadTime = 8.015625
Projectile = "_railgun14"
FireStdDev =0.0036208047467085973
FireStdDevAuto =0.0018104023733542987

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head28"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 30800.0
MaxFireSpeed = 30800.0
EnergyFireCost = 5089.250923031295
MetalFireCost = 169.64169743437654
ReloadTime = 7.03125
Projectile = "_railgun28"
FireStdDev =0.0009534710555481822
FireStdDevAuto =0.0004767355277740911

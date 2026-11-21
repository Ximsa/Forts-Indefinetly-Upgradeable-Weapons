local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head41"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 36000.0
MaxFireSpeed = 36000.0
EnergyFireCost = 7726.289879082054
MetalFireCost = 257.5429959694019
ReloadTime = 6.1171875
Projectile = "_railgun41"
FireStdDev =0.0002761866019022491
FireStdDevAuto =0.00013809330095112456

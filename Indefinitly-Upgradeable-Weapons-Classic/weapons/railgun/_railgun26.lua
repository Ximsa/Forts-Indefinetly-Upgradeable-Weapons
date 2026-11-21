local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head26"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 30000.0
MaxFireSpeed = 30000.0
EnergyFireCost = 4728.68444514466
MetalFireCost = 157.62281483815534
ReloadTime = 7.171875
Projectile = "_railgun26"
FireStdDev =0.0011536999772133007
FireStdDevAuto =0.0005768499886066504

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head50"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 39600.0
MaxFireSpeed = 39600.0
EnergyFireCost = 9889.508035972329
MetalFireCost = 329.6502678657445
ReloadTime = 5.484375
Projectile = "_railgun50"
FireStdDev =0.00011713008009313336
FireStdDevAuto =5.856504004656668e-05

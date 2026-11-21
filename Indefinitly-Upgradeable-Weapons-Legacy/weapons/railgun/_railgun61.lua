local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head61"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 44000.0
MaxFireSpeed = 44000.0
EnergyFireCost = 12978.083692842445
MetalFireCost = 432.60278976141507
ReloadTime = 4.7109375
Projectile = "_railgun61"
FireStdDev =4.105337851841009e-05
FireStdDevAuto =2.0526689259205046e-05

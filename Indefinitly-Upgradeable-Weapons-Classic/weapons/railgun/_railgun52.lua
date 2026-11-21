local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head52"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 40400.0
MaxFireSpeed = 40400.0
EnergyFireCost = 10412.61021776931
MetalFireCost = 347.0870072589772
ReloadTime = 5.34375
Projectile = "_railgun52"
FireStdDev =9.680171908523417e-05
FireStdDevAuto =4.8400859542617086e-05

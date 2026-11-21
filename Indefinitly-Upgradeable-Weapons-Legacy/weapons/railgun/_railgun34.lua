local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head34"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 33200.0
MaxFireSpeed = 33200.0
EnergyFireCost = 6240.526564380817
MetalFireCost = 208.0175521460273
ReloadTime = 6.609375
Projectile = "_railgun34"
FireStdDev =0.0005382095539178057
FireStdDevAuto =0.00026910477695890286

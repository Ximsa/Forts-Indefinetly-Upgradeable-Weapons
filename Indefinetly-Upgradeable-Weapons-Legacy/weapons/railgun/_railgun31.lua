local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head31"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 32000.0
MaxFireSpeed = 32000.0
EnergyFireCost = 5651.503962468984
MetalFireCost = 188.38346541563288
ReloadTime = 6.8203125
Projectile = "_railgun31"
FireStdDev =0.0007163569162645996
FireStdDevAuto =0.0003581784581322998

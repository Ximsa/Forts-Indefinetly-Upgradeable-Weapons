local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head30"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 31600.0
MaxFireSpeed = 31600.0
EnergyFireCost = 5461.173132277154
MetalFireCost = 182.03910440923852
ReloadTime = 6.890625
Projectile = "_railgun30"
FireStdDev =0.0007879926078910596
FireStdDevAuto =0.0003939963039455298

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head45"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 17800.0
MaxFireSpeed = 17800.1
EnergyFireCost = 3707.3853633945937
MetalFireCost = 247.15902422630634
ReloadTime = 4.21484375
Projectile = "_musket45"
FireStdDev =0.0003018226644652677
FireStdDevAuto =0.0006036453289305354

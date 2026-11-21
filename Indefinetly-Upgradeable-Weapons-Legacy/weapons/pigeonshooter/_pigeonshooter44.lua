local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head44"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 17600.0
MaxFireSpeed = 17600.1
EnergyFireCost = 3606.040973188523
MetalFireCost = 240.40273154590162
ReloadTime = 4.265625
Projectile = "_musket44"
FireStdDev =0.0003320049309117945
FireStdDevAuto =0.000664009861823589

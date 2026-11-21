local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head50"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 18800.0
MaxFireSpeed = 18800.1
EnergyFireCost = 4238.360586845283
MetalFireCost = 282.55737245635237
ReloadTime = 3.9609375
Projectile = "_musket50"
FireStdDev =0.00018740812814901342
FireStdDevAuto =0.00037481625629802684

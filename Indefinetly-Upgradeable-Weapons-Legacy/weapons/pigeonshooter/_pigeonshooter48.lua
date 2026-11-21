local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head48"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 18400.0
MaxFireSpeed = 18400.1
EnergyFireCost = 4021.018926323854
MetalFireCost = 268.06792842159035
ReloadTime = 4.0625
Projectile = "_musket48"
FireStdDev =0.00022676383506030627
FireStdDevAuto =0.00045352767012061255

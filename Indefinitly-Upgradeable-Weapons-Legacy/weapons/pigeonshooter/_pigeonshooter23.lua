local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head23"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 13400.0
MaxFireSpeed = 13400.1
EnergyFireCost = 1803.587648384943
MetalFireCost = 120.23917655899619
ReloadTime = 5.33203125
Projectile = "_musket23"
FireStdDev =0.0024569194714734455
FireStdDevAuto =0.004913838942946891

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head63"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 21400.0
MaxFireSpeed = 21400.1
EnergyFireCost = 5827.9105331605015
MetalFireCost = 388.527368877367
ReloadTime = 3.30078125
Projectile = "_musket63"
FireStdDev =5.428545919789767e-05
FireStdDevAuto =0.00010857091839579534

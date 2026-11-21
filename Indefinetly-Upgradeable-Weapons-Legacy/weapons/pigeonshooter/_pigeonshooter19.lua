local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head19"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 12600.0
MaxFireSpeed = 12600.1
EnergyFireCost = 1521.9501631951955
MetalFireCost = 101.46334421301303
ReloadTime = 5.53515625
Projectile = "_musket19"
FireStdDev =0.0035971757981842723
FireStdDevAuto =0.007194351596368545

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head28"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 14400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 2181.1075384419837
MetalFireCost = 145.4071692294656
ReloadTime = 5.078125
Projectile = "_musket28"
FireStdDev =0.0015255536888770915
FireStdDevAuto =0.003051107377754183

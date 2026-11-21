local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head39"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 16600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 3122.23195381776
MetalFireCost = 208.14879692118407
ReloadTime = 4.51953125
Projectile = "_musket39"
FireStdDev =0.0005346972612827544
FireStdDevAuto =0.0010693945225655089

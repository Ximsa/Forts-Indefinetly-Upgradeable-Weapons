local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head54"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 19600.0
MaxFireSpeed = 19600.1
EnergyFireCost = 4693.79445138902
MetalFireCost = 312.91963009260144
ReloadTime = 3.7578125
Projectile = "_musket54"
FireStdDev =0.0001280022731705576
FireStdDevAuto =0.0002560045463411152

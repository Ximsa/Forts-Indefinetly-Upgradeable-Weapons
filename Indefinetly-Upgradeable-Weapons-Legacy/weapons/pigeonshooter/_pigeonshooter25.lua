local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head25"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 13800.0
MaxFireSpeed = 13800.1
EnergyFireCost = 1951.0932164126914
MetalFireCost = 130.07288109417942
ReloadTime = 5.23046875
Projectile = "_musket25"
FireStdDev =0.0020305119598954093
FireStdDevAuto =0.004061023919790819

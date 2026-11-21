local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head12"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 11200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 1069.2210458673821
MetalFireCost = 71.28140305782547
ReloadTime = 5.890625
Projectile = "_musket12"
FireStdDev =0.007009877989627844
FireStdDevAuto =0.014019755979255689

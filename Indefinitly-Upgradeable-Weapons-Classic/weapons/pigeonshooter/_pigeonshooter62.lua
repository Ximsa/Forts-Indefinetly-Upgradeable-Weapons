local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head62"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 21200.0
MaxFireSpeed = 21200.1
EnergyFireCost = 5693.9426788041865
MetalFireCost = 379.59617858694594
ReloadTime = 3.3515625
Projectile = "_musket62"
FireStdDev =5.971400511768744e-05
FireStdDevAuto =0.00011942801023537488

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head41"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 17000.0
MaxFireSpeed = 17000.1
EnergyFireCost = 3311.267091035165
MetalFireCost = 220.75113940234442
ReloadTime = 4.41796875
Projectile = "_musket41"
FireStdDev =0.0004418985630435986
FireStdDevAuto =0.0008837971260871972

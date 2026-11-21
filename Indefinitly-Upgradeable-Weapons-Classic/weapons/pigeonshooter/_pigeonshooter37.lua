local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head37"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 16200.0
MaxFireSpeed = 16200.1
EnergyFireCost = 2938.9685403165786
MetalFireCost = 195.9312360211053
ReloadTime = 4.62109375
Projectile = "_musket37"
FireStdDev =0.0006469836861521329
FireStdDevAuto =0.0012939673723042658

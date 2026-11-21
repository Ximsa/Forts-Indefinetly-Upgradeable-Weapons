local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head22"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 13200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 1731.5324537944052
MetalFireCost = 115.43549691962701
ReloadTime = 5.3828125
Projectile = "_musket22"
FireStdDev =0.00270261141862079
FireStdDevAuto =0.00540522283724158

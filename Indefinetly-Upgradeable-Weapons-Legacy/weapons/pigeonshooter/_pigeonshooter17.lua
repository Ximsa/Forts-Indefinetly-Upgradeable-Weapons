local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head17"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 12200.0
MaxFireSpeed = 12200.1
EnergyFireCost = 1387.5474244846203
MetalFireCost = 92.50316163230802
ReloadTime = 5.63671875
Projectile = "_musket17"
FireStdDev =0.0043525827158029705
FireStdDevAuto =0.008705165431605941

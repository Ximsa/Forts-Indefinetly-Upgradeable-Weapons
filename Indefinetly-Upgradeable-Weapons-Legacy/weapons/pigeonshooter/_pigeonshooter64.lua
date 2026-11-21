local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head64"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 21600.0
MaxFireSpeed = 21600.1
EnergyFireCost = 5963.971635241134
MetalFireCost = 397.59810901607585
ReloadTime = 3.25
Projectile = "_musket64"
FireStdDev =4.935041745263424e-05
FireStdDevAuto =9.870083490526848e-05

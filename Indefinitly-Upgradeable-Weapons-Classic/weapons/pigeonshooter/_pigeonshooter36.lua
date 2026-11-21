local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head36"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 2849.4459473886313
MetalFireCost = 189.96306315924213
ReloadTime = 4.671875
Projectile = "_musket36"
FireStdDev =0.0007116820547673462
FireStdDevAuto =0.0014233641095346924

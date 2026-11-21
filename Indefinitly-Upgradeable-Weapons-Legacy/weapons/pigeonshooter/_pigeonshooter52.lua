local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head52"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 19200.0
MaxFireSpeed = 19200.1
EnergyFireCost = 4462.547236186846
MetalFireCost = 297.5031490791232
ReloadTime = 3.859375
Projectile = "_musket52"
FireStdDev =0.0001548827505363747
FireStdDevAuto =0.0003097655010727494

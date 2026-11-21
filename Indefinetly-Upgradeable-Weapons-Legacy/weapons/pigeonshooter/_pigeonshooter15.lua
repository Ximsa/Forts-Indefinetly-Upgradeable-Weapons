local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head15"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 11800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 1257.2483433583443
MetalFireCost = 83.81655622388962
ReloadTime = 5.73828125
Projectile = "_musket15"
FireStdDev =0.005266625086121595
FireStdDevAuto =0.01053325017224319

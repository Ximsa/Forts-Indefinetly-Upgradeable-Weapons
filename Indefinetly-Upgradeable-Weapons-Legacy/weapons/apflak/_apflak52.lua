local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head52"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 16200.0
MaxFireSpeed = 16200.1
EnergyFireCost = 4958.385817985387
MetalFireCost = 297.5031490791232
ReloadTime = 2.96875
Projectile = "_apflak052"
FireStdDev =7.744137526818735e-05
FireStdDevAuto =7.744137526818735e-05

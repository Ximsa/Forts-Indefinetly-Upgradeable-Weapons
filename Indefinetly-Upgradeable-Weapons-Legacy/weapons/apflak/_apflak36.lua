local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head36"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 13000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 3166.051052654036
MetalFireCost = 189.96306315924213
ReloadTime = 3.59375
Projectile = "_apflak036"
FireStdDev =0.0003558410273836731
FireStdDevAuto =0.0003558410273836731

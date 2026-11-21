local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head8"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 7400.0
MaxFireSpeed = 7400.1
EnergyFireCost = 924.1590214013968
MetalFireCost = 55.44954128408381
ReloadTime = 4.6875
Projectile = "_apflak08"
FireStdDev =0.005131581182307065
FireStdDevAuto =0.005131581182307065

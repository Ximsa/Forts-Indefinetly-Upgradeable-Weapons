local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head40"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 13800.0
MaxFireSpeed = 13800.1
EnergyFireCost = 3573.35203121796
MetalFireCost = 214.40112187307759
ReloadTime = 3.4375
Projectile = "_apflak040"
FireStdDev =0.00024304420967397926
FireStdDevAuto =0.00024304420967397926

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head2"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 6200.0
MaxFireSpeed = 6200.1
EnergyFireCost = 557.8125
MetalFireCost = 33.46875
ReloadTime = 4.921875
Projectile = "_apflak02"
FireStdDev =0.00909090909090909
FireStdDevAuto =0.00909090909090909

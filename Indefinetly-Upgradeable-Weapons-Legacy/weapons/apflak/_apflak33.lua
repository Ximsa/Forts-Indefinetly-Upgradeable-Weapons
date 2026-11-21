local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head33"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 12400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 2876.7304038122516
MetalFireCost = 172.60382422873508
ReloadTime = 3.7109375
Projectile = "_apflak033"
FireStdDev =0.00047362440744766905
FireStdDevAuto =0.00047362440744766905

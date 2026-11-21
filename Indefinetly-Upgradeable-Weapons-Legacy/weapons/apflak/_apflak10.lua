local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head10"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 7800.0
MaxFireSpeed = 7800.1
EnergyFireCost = 1054.0458655812747
MetalFireCost = 63.24275193487649
ReloadTime = 4.609375
Projectile = "_apflak010"
FireStdDev =0.004240976183724847
FireStdDevAuto =0.004240976183724847

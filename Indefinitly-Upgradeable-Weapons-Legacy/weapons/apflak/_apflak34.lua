local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head34"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 12600.0
MaxFireSpeed = 12600.1
EnergyFireCost = 2971.679316371818
MetalFireCost = 178.30075898230908
ReloadTime = 3.671875
Projectile = "_apflak034"
FireStdDev =0.00043056764313424456
FireStdDevAuto =0.00043056764313424456

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head43"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 14400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 3895.839697163514
MetalFireCost = 233.75038182981083
ReloadTime = 3.3203125
Projectile = "_apflak043"
FireStdDev =0.00018260271200148698
FireStdDevAuto =0.00018260271200148698

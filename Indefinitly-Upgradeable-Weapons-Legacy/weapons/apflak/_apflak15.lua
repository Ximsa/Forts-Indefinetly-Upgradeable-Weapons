local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head15"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 8800.0
MaxFireSpeed = 8800.1
EnergyFireCost = 1396.9426037314936
MetalFireCost = 83.81655622388962
ReloadTime = 4.4140625
Projectile = "_apflak015"
FireStdDev =0.0026333125430607974
FireStdDevAuto =0.0026333125430607974

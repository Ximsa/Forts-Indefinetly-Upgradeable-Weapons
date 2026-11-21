local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head51"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 4832.872190016381
MetalFireCost = 289.97233140098285
ReloadTime = 3.0078125
Projectile = "_apflak051"
FireStdDev =8.518551279500609e-05
FireStdDevAuto =8.518551279500609e-05

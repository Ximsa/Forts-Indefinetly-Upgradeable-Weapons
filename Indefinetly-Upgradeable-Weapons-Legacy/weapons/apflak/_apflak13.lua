local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head13"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 8400.0
MaxFireSpeed = 8400.1
EnergyFireCost = 1256.5862496767331
MetalFireCost = 75.395174980604
ReloadTime = 4.4921875
Projectile = "_apflak013"
FireStdDev =0.0031863081771035654
FireStdDevAuto =0.0031863081771035654

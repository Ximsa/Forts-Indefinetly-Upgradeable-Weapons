local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head60"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 17800.0
MaxFireSpeed = 17800.1
EnergyFireCost = 6035.731548292429
MetalFireCost = 362.1438928975457
ReloadTime = 2.65625
Projectile = "_apflak060"
FireStdDev =3.612697309620091e-05
FireStdDevAuto =3.612697309620091e-05

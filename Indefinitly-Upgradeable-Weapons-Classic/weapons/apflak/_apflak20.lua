local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head20"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 9800.0
MaxFireSpeed = 9800.1
EnergyFireCost = 1767.478482772356
MetalFireCost = 106.04870896634137
ReloadTime = 4.21875
Projectile = "_apflak020"
FireStdDev =0.0016350799082655782
FireStdDevAuto =0.0016350799082655782

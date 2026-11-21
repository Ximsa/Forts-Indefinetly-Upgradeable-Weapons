local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head21"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
EnergyFireCost = 1845.0953340656743
MetalFireCost = 110.70572004394045
ReloadTime = 4.1796875
Projectile = "_apflak021"
FireStdDev =0.0014864362802414347
FireStdDevAuto =0.0014864362802414347

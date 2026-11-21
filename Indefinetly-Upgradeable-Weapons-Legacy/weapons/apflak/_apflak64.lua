local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head64"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 18600.0
MaxFireSpeed = 18600.1
EnergyFireCost = 6626.635150267932
MetalFireCost = 397.59810901607585
ReloadTime = 2.5
Projectile = "_apflak064"
FireStdDev =2.467520872631712e-05
FireStdDevAuto =2.467520872631712e-05

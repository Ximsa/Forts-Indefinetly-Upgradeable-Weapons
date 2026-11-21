local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head55"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 16800.0
MaxFireSpeed = 16800.1
EnergyFireCost = 5346.816655213306
MetalFireCost = 320.80899931279833
ReloadTime = 2.8515625
Projectile = "_apflak055"
FireStdDev =5.818285144116254e-05
FireStdDevAuto =5.818285144116254e-05

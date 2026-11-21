local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head28"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 11400.0
MaxFireSpeed = 11400.1
EnergyFireCost = 2423.452820491093
MetalFireCost = 145.4071692294656
ReloadTime = 3.90625
Projectile = "_apflak028"
FireStdDev =0.0007627768444385457
FireStdDevAuto =0.0007627768444385457

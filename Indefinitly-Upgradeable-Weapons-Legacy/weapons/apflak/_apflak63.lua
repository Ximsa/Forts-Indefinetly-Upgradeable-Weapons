local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head63"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 18400.0
MaxFireSpeed = 18400.1
EnergyFireCost = 6475.456147956117
MetalFireCost = 388.527368877367
ReloadTime = 2.5390625
Projectile = "_apflak063"
FireStdDev =2.7142729598948835e-05
FireStdDevAuto =2.7142729598948835e-05

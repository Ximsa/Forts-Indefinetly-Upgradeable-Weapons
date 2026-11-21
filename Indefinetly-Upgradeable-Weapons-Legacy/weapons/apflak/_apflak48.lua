local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head48"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 15400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 4467.7988070265055
MetalFireCost = 268.06792842159035
ReloadTime = 3.125
Projectile = "_apflak048"
FireStdDev =0.00011338191753015314
FireStdDevAuto =0.00011338191753015314

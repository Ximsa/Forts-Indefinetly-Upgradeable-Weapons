local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head22"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 10200.0
MaxFireSpeed = 10200.1
EnergyFireCost = 1923.9249486604504
MetalFireCost = 115.43549691962701
ReloadTime = 4.140625
Projectile = "_apflak022"
FireStdDev =0.001351305709310395
FireStdDevAuto =0.001351305709310395

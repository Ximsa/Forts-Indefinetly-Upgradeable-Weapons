local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head59"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 17600.0
MaxFireSpeed = 17600.1
EnergyFireCost = 5893.6433706263915
MetalFireCost = 353.61860223758345
ReloadTime = 2.6953125
Projectile = "_apflak059"
FireStdDev =3.9739670405821e-05
FireStdDevAuto =3.9739670405821e-05

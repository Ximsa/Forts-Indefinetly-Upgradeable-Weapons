local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head62"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 18200.0
MaxFireSpeed = 18200.1
EnergyFireCost = 6326.6029764490995
MetalFireCost = 379.59617858694594
ReloadTime = 2.578125
Projectile = "_apflak062"
FireStdDev =2.985700255884372e-05
FireStdDevAuto =2.985700255884372e-05

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head11"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1
EnergyFireCost = 1120.515332230982
MetalFireCost = 67.23091993385893
ReloadTime = 4.5703125
Projectile = "_apflak011"
FireStdDev =0.0038554328942953147
FireStdDevAuto =0.0038554328942953147

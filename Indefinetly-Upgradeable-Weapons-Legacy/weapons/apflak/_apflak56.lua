local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head56"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 17000.0
MaxFireSpeed = 17000.1
EnergyFireCost = 5480.360665451014
MetalFireCost = 328.8216399270608
ReloadTime = 2.8125
Projectile = "_apflak056"
FireStdDev =5.289350131014776e-05
FireStdDevAuto =5.289350131014776e-05

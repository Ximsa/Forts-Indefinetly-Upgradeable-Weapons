local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head46"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 4233.681399664039
MetalFireCost = 254.02088397984238
ReloadTime = 3.203125
Projectile = "_apflak046"
FireStdDev =0.0001371921202114853
FireStdDevAuto =0.0001371921202114853

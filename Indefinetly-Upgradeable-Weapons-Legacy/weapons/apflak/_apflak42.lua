local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head42"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 14200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 3786.6729325917677
MetalFireCost = 227.20037595550605
ReloadTime = 3.359375
Projectile = "_apflak042"
FireStdDev =0.0002008629832016357
FireStdDevAuto =0.0002008629832016357

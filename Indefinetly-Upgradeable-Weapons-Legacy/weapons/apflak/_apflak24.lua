local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head24"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 10600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 2085.2985615455086
MetalFireCost = 125.11791369273051
ReloadTime = 4.0625
Projectile = "_apflak024"
FireStdDev =0.0011167815779424752
FireStdDevAuto =0.0011167815779424752

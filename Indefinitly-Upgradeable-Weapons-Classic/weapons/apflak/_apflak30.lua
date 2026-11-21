local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head30"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 11800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 2600.5586344176927
MetalFireCost = 156.03351806506157
ReloadTime = 3.828125
Projectile = "_apflak030"
FireStdDev =0.0006303940863128477
FireStdDevAuto =0.0006303940863128477

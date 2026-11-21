local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head5"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 6800.0
MaxFireSpeed = 6800.1
EnergyFireCost = 736.7265999317169
MetalFireCost = 44.203595995903015
ReloadTime = 4.8046875
Projectile = "_apflak05"
FireStdDev =0.006830134553650705
FireStdDevAuto =0.006830134553650705

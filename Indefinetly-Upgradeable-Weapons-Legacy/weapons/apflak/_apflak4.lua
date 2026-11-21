local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head4"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 6600.0
MaxFireSpeed = 6600.1
EnergyFireCost = 676.1615753173828
MetalFireCost = 40.56969451904297
ReloadTime = 4.84375
Projectile = "_apflak04"
FireStdDev =0.007513148009015776
FireStdDevAuto =0.007513148009015776

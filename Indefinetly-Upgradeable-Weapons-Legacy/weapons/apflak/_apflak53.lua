local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head53"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 16400.0
MaxFireSpeed = 16400.1
EnergyFireCost = 5085.860596391409
MetalFireCost = 305.1516357834845
ReloadTime = 2.9296875
Projectile = "_apflak053"
FireStdDev =7.040125024380668e-05
FireStdDevAuto =7.040125024380668e-05

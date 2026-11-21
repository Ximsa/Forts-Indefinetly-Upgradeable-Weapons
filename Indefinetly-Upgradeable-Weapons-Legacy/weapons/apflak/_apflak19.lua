local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head19"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 9600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 1691.0557368835507
MetalFireCost = 101.46334421301303
ReloadTime = 4.2578125
Projectile = "_apflak019"
FireStdDev =0.0017985878990921362
FireStdDevAuto =0.0017985878990921362

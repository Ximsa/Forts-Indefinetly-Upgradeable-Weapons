local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head29"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 11600.0
MaxFireSpeed = 11600.1
EnergyFireCost = 2511.3192708112665
MetalFireCost = 150.679156248676
ReloadTime = 3.8671875
Projectile = "_apflak029"
FireStdDev =0.0006934334949441325
FireStdDevAuto =0.0006934334949441325

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head14"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 8600.0
MaxFireSpeed = 8600.1
EnergyFireCost = 1326.2204098279321
MetalFireCost = 79.57322458967593
ReloadTime = 4.453125
Projectile = "_apflak014"
FireStdDev =0.0028966437973668773
FireStdDevAuto =0.0028966437973668773

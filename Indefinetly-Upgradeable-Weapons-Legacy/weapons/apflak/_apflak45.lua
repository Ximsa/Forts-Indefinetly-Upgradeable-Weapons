local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head45"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 14800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 4119.317070438439
MetalFireCost = 247.15902422630634
ReloadTime = 3.2421875
Projectile = "_apflak045"
FireStdDev =0.00015091133223263384
FireStdDevAuto =0.00015091133223263384

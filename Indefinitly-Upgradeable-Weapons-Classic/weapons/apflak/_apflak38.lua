local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head38"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 13400.0
MaxFireSpeed = 13400.1
EnergyFireCost = 3366.544359732252
MetalFireCost = 201.99266158393507
ReloadTime = 3.515625
Projectile = "_apflak038"
FireStdDev =0.00029408349370551494
FireStdDevAuto =0.00029408349370551494

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head9"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 7600.0
MaxFireSpeed = 7600.1
EnergyFireCost = 988.5990061107937
MetalFireCost = 59.31594036664762
ReloadTime = 4.6484375
Projectile = "_apflak09"
FireStdDev =0.004665073802097332
FireStdDevAuto =0.004665073802097332

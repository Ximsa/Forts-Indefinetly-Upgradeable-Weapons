local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head6"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 7000.0
MaxFireSpeed = 7000.1
EnergyFireCost = 798.23795305565
MetalFireCost = 47.894277183339
ReloadTime = 4.765625
Projectile = "_apflak06"
FireStdDev =0.006209213230591549
FireStdDevAuto =0.006209213230591549

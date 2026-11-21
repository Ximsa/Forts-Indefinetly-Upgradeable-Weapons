local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/apflak.lua")
path = tmp
Sprites={{Name = "apflak-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/apflak/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="apflak-head16"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ShellEffect = "mods/weapon_pack/effects/shell_eject_shotgun.lua"NodeEffects = {}
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
EnergyFireCost = 1468.7698319147983
MetalFireCost = 88.1261899148879
ReloadTime = 4.375
Projectile = "_apflak016"
FireStdDev =0.002393920493691634
FireStdDevAuto =0.002393920493691634

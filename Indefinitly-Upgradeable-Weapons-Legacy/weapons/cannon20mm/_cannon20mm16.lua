local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel16",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel16"
NodeEffects = {}
MinFireSpeed = 7666.664999999998
MaxFireSpeed = 7666.7649999999985
EnergyFireCost = 7343.8491595739915
MetalFireCost = 117.50158655318386
ReloadTime = 22.75
Projectile = "_cannon20mm16"
FireStdDev = 0.015
FireStdDevAuto = 0.015

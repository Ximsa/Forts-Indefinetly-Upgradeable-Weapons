local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel51",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel51"
NodeEffects = {}
MinFireSpeed = 11555.550000000021
MaxFireSpeed = 11555.650000000021
EnergyFireCost = 24164.360950081908
MetalFireCost = 386.6297752013105
ReloadTime = 15.640625
Projectile = "_cannon20mm51"
FireStdDev = 0.01
FireStdDevAuto = 0.01

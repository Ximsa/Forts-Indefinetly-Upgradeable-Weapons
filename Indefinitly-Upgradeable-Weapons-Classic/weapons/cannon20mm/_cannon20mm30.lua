local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel30",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel30"
NodeEffects = {}
MinFireSpeed = 9222.219000000005
MaxFireSpeed = 9222.319000000005
EnergyFireCost = 13002.793172088464
MetalFireCost = 208.0446907534154
ReloadTime = 19.90625
Projectile = "_cannon20mm30"
FireStdDev = 0.010625
FireStdDevAuto = 0.010625

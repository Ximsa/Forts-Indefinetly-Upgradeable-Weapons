local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel55",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel55"
NodeEffects = {}
MinFireSpeed = 11999.994000000024
MaxFireSpeed = 12000.094000000025
EnergyFireCost = 26734.083276066533
MetalFireCost = 427.7453324170645
ReloadTime = 14.828125
Projectile = "_cannon20mm55"
FireStdDev = 0.01
FireStdDevAuto = 0.01

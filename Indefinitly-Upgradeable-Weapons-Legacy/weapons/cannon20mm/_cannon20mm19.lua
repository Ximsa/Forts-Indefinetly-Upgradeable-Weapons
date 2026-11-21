local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel19",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel19"
NodeEffects = {}
MinFireSpeed = 7999.997999999998
MaxFireSpeed = 8000.097999999998
EnergyFireCost = 8455.278684417754
MetalFireCost = 135.28445895068407
ReloadTime = 22.140625
Projectile = "_cannon20mm19"
FireStdDev = 0.0140625
FireStdDevAuto = 0.0140625

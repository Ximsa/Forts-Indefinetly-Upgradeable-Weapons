local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel28",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel28"
NodeEffects = {}
MinFireSpeed = 8999.997000000003
MaxFireSpeed = 9000.097000000003
EnergyFireCost = 12117.264102455467
MetalFireCost = 193.87622563928747
ReloadTime = 20.3125
Projectile = "_cannon20mm28"
FireStdDev = 0.01125
FireStdDevAuto = 0.01125

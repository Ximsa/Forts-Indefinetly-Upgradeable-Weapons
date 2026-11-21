local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel61",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel61"
NodeEffects = {}
MinFireSpeed = 12666.660000000029
MaxFireSpeed = 12666.76000000003
EnergyFireCost = 30900.19926867249
MetalFireCost = 494.4031882987598
ReloadTime = 13.609375
Projectile = "_cannon20mm61"
FireStdDev = 0.01
FireStdDevAuto = 0.01

local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel21",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel21"
NodeEffects = {}
MinFireSpeed = 8222.219999999998
MaxFireSpeed = 8222.319999999998
EnergyFireCost = 9225.476670328371
MetalFireCost = 147.60762672525397
ReloadTime = 21.734375
Projectile = "_cannon20mm21"
FireStdDev = 0.013437500000000002
FireStdDevAuto = 0.013437500000000002

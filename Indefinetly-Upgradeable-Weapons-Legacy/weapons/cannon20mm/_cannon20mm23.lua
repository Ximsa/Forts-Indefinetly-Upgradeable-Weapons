local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel23",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel23"
NodeEffects = {}
MinFireSpeed = 8444.442
MaxFireSpeed = 8444.542
EnergyFireCost = 10019.93137991635
MetalFireCost = 160.3189020786616
ReloadTime = 21.328125
Projectile = "_cannon20mm23"
FireStdDev = 0.012812500000000001
FireStdDevAuto = 0.012812500000000001

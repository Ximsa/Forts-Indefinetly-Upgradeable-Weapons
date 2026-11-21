local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel50",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel50"
NodeEffects = {}
MinFireSpeed = 11444.43900000002
MaxFireSpeed = 11444.53900000002
EnergyFireCost = 23546.44770469603
MetalFireCost = 376.7431632751365
ReloadTime = 15.84375
Projectile = "_cannon20mm50"
FireStdDev = 0.01
FireStdDevAuto = 0.01

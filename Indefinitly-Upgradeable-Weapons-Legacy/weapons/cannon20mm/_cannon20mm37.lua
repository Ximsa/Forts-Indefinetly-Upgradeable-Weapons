local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel37",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel37"
NodeEffects = {}
MinFireSpeed = 9999.99600000001
MaxFireSpeed = 10000.09600000001
EnergyFireCost = 16327.603001758778
MetalFireCost = 261.24164802814045
ReloadTime = 18.484375
Projectile = "_cannon20mm37"
FireStdDev = 0.01
FireStdDevAuto = 0.01

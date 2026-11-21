local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel32",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel32"
NodeEffects = {}
MinFireSpeed = 9444.441000000006
MaxFireSpeed = 9444.541000000007
EnergyFireCost = 13916.211218768009
MetalFireCost = 222.6593795002881
ReloadTime = 19.5
Projectile = "_cannon20mm32"
FireStdDev = 0.01
FireStdDevAuto = 0.01

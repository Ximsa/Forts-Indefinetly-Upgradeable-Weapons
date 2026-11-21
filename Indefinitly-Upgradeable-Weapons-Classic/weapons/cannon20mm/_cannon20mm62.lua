local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel62",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel62"
NodeEffects = {}
MinFireSpeed = 12777.77100000003
MaxFireSpeed = 12777.87100000003
EnergyFireCost = 31633.014882245498
MetalFireCost = 506.1282381159279
ReloadTime = 13.40625
Projectile = "_cannon20mm62"
FireStdDev = 0.01
FireStdDevAuto = 0.01

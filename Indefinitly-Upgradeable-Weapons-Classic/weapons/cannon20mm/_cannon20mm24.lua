local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel24",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel24"
NodeEffects = {}
MinFireSpeed = 8555.553
MaxFireSpeed = 8555.653
EnergyFireCost = 10426.492807727544
MetalFireCost = 166.8238849236407
ReloadTime = 21.125
Projectile = "_cannon20mm24"
FireStdDev = 0.0125
FireStdDevAuto = 0.0125

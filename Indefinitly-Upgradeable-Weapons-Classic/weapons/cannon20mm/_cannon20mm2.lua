local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel2",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel2"
NodeEffects = {}
MinFireSpeed = 6111.111
MaxFireSpeed = 6111.211
EnergyFireCost = 2789.0625
MetalFireCost = 44.625
ReloadTime = 25.59375
Projectile = "_cannon20mm2"
FireStdDev = 0.019375
FireStdDevAuto = 0.019375

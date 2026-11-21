local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel35",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel35"
NodeEffects = {}
MinFireSpeed = 9777.774000000009
MaxFireSpeed = 9777.874000000009
EnergyFireCost = 15340.55902845064
MetalFireCost = 245.4489444552102
ReloadTime = 18.890625
Projectile = "_cannon20mm35"
FireStdDev = 0.01
FireStdDevAuto = 0.01

local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel58",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel58"
NodeEffects = {}
MinFireSpeed = 12333.327000000027
MaxFireSpeed = 12333.427000000027
EnergyFireCost = 28768.705824622237
MetalFireCost = 460.29929319395575
ReloadTime = 14.21875
Projectile = "_cannon20mm58"
FireStdDev = 0.01
FireStdDevAuto = 0.01

local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel40",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel40"
NodeEffects = {}
MinFireSpeed = 10333.329000000012
MaxFireSpeed = 10333.429000000013
EnergyFireCost = 17866.7601560898
MetalFireCost = 285.86816249743674
ReloadTime = 17.875
Projectile = "_cannon20mm40"
FireStdDev = 0.01
FireStdDevAuto = 0.01

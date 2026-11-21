local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel4",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel4"
NodeEffects = {}
MinFireSpeed = 6333.333
MaxFireSpeed = 6333.433
EnergyFireCost = 3380.807876586914
MetalFireCost = 54.092926025390625
ReloadTime = 25.1875
Projectile = "_cannon20mm4"
FireStdDev = 0.01875
FireStdDevAuto = 0.01875

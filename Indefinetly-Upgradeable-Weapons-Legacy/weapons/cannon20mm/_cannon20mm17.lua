local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel17",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel17"
NodeEffects = {}
MinFireSpeed = 7777.775999999998
MaxFireSpeed = 7777.875999999998
EnergyFireCost = 7708.596802692336
MetalFireCost = 123.33754884307736
ReloadTime = 22.546875
Projectile = "_cannon20mm17"
FireStdDev = 0.0146875
FireStdDevAuto = 0.0146875

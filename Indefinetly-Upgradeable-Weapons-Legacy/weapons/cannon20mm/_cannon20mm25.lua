local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel25",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel25"
NodeEffects = {}
MinFireSpeed = 8666.664
MaxFireSpeed = 8666.764000000001
EnergyFireCost = 10839.406757848286
MetalFireCost = 173.43050812557257
ReloadTime = 20.921875
Projectile = "_cannon20mm25"
FireStdDev = 0.0121875
FireStdDevAuto = 0.0121875

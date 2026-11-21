local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel56",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel56"
NodeEffects = {}
MinFireSpeed = 12111.105000000025
MaxFireSpeed = 12111.205000000025
EnergyFireCost = 27401.80332725507
MetalFireCost = 438.4288532360811
ReloadTime = 14.625
Projectile = "_cannon20mm56"
FireStdDev = 0.01
FireStdDevAuto = 0.01

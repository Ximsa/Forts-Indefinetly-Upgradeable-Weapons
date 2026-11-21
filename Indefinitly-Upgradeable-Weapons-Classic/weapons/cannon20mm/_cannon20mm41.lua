local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel41",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel41"
NodeEffects = {}
MinFireSpeed = 10444.440000000013
MaxFireSpeed = 10444.540000000014
EnergyFireCost = 18395.928283528705
MetalFireCost = 294.3348525364592
ReloadTime = 17.671875
Projectile = "_cannon20mm41"
FireStdDev = 0.01
FireStdDevAuto = 0.01

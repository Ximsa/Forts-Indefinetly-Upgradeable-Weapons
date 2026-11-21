local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel52",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel52"
NodeEffects = {}
MinFireSpeed = 11666.661000000022
MaxFireSpeed = 11666.761000000022
EnergyFireCost = 24791.929089926936
MetalFireCost = 396.67086543883096
ReloadTime = 15.4375
Projectile = "_cannon20mm52"
FireStdDev = 0.01
FireStdDevAuto = 0.01

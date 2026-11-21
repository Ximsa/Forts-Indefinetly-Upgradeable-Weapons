local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel5",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel5"
NodeEffects = {}
MinFireSpeed = 6444.4439999999995
MaxFireSpeed = 6444.544
EnergyFireCost = 3683.6329996585846
MetalFireCost = 58.93812799453735
ReloadTime = 24.984375
Projectile = "_cannon20mm5"
FireStdDev = 0.0184375
FireStdDevAuto = 0.0184375

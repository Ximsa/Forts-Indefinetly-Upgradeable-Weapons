local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel9",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel9"
NodeEffects = {}
MinFireSpeed = 6888.887999999999
MaxFireSpeed = 6888.987999999999
EnergyFireCost = 4942.995030553968
MetalFireCost = 79.08792048886349
ReloadTime = 24.171875
Projectile = "_cannon20mm9"
FireStdDev = 0.0171875
FireStdDevAuto = 0.0171875

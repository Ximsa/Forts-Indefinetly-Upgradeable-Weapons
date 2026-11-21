local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel18",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel18"
NodeEffects = {}
MinFireSpeed = 7888.886999999998
MaxFireSpeed = 7888.986999999998
EnergyFireCost = 8079.043627734403
MetalFireCost = 129.26469804375046
ReloadTime = 22.34375
Projectile = "_cannon20mm18"
FireStdDev = 0.014375
FireStdDevAuto = 0.014375

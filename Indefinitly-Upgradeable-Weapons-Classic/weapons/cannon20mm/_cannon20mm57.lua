local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel57",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel57"
NodeEffects = {}
MinFireSpeed = 12222.216000000026
MaxFireSpeed = 12222.316000000026
EnergyFireCost = 28079.956504243433
MetalFireCost = 449.2793040678949
ReloadTime = 14.421875
Projectile = "_cannon20mm57"
FireStdDev = 0.01
FireStdDevAuto = 0.01

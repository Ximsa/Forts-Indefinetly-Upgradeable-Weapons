local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel39",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel39"
NodeEffects = {}
MinFireSpeed = 10222.218000000012
MaxFireSpeed = 10222.318000000012
EnergyFireCost = 17345.73307676534
MetalFireCost = 277.5317292282454
ReloadTime = 18.078125
Projectile = "_cannon20mm39"
FireStdDev = 0.01
FireStdDevAuto = 0.01

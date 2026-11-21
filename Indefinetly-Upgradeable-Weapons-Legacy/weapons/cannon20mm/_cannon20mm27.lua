local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel27",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel27"
NodeEffects = {}
MinFireSpeed = 8888.886000000002
MaxFireSpeed = 8888.986000000003
EnergyFireCost = 11684.690808571537
MetalFireCost = 186.9550529371446
ReloadTime = 20.515625
Projectile = "_cannon20mm27"
FireStdDev = 0.0115625
FireStdDevAuto = 0.0115625

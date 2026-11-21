local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel48",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel48"
NodeEffects = {}
MinFireSpeed = 11222.217000000019
MaxFireSpeed = 11222.31700000002
EnergyFireCost = 22338.99403513253
MetalFireCost = 357.42390456212047
ReloadTime = 16.25
Projectile = "_cannon20mm48"
FireStdDev = 0.01
FireStdDevAuto = 0.01

local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel7",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel7"
NodeEffects = {}
MinFireSpeed = 6666.665999999999
MaxFireSpeed = 6666.766
EnergyFireCost = 4303.552105360723
MetalFireCost = 68.85683368577156
ReloadTime = 24.578125
Projectile = "_cannon20mm7"
FireStdDev = 0.017812500000000002
FireStdDevAuto = 0.017812500000000002

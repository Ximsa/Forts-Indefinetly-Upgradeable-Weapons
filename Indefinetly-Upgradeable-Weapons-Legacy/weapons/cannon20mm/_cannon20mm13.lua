local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel13",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel13"
NodeEffects = {}
MinFireSpeed = 7333.3319999999985
MaxFireSpeed = 7333.431999999999
EnergyFireCost = 6282.931248383667
MetalFireCost = 100.52689997413866
ReloadTime = 23.359375
Projectile = "_cannon20mm13"
FireStdDev = 0.0159375
FireStdDevAuto = 0.0159375

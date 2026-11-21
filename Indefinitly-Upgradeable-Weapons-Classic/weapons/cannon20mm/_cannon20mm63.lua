local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel63",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel63"
NodeEffects = {}
MinFireSpeed = 12888.88200000003
MaxFireSpeed = 12888.98200000003
EnergyFireCost = 32377.280739780585
MetalFireCost = 518.0364918364893
ReloadTime = 13.203125
Projectile = "_cannon20mm63"
FireStdDev = 0.01
FireStdDevAuto = 0.01

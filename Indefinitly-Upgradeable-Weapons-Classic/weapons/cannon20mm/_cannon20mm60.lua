local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel60",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel60"
NodeEffects = {}
MinFireSpeed = 12555.549000000028
MaxFireSpeed = 12555.649000000029
EnergyFireCost = 30178.657741462146
MetalFireCost = 482.8585238633943
ReloadTime = 13.8125
Projectile = "_cannon20mm60"
FireStdDev = 0.01
FireStdDevAuto = 0.01

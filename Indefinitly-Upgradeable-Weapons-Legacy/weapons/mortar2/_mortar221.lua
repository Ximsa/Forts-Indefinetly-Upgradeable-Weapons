dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head21",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head21"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 738.0381336262695
MetalFireCost = 55.35286002197022
ReloadTime = 7.5234375
MinFireAngle = 25.3125
Projectile = "_mortar221"

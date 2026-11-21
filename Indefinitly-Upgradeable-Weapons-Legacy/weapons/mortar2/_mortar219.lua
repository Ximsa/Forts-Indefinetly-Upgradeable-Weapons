dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head19",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head19"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 676.4222947534201
MetalFireCost = 50.731672106506515
ReloadTime = 7.6640625
MinFireAngle = 27.1875
Projectile = "_mortar219"

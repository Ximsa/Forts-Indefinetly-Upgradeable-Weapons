dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel48",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel48"
NodeEffects = {}
MinFireSpeed = 11217.0
MaxFireSpeed = 11217.1
EnergyFireCost = 26806.79284215903
MetalFireCost = 446.7798807026504
ReloadTime = 16.25
Projectile = "_cannon48"

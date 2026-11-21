dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel20",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel20"
NodeEffects = {}
MinFireSpeed = 8109.0
MaxFireSpeed = 8109.1
EnergyFireCost = 10604.870896634136
MetalFireCost = 176.7478482772356
ReloadTime = 21.9375
Projectile = "_cannon20"

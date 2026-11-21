dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel9",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel9"
NodeEffects = {}
MinFireSpeed = 6888.0
MaxFireSpeed = 6888.1
EnergyFireCost = 5931.594036664762
MetalFireCost = 98.85990061107935
ReloadTime = 24.171875
Projectile = "_cannon9"

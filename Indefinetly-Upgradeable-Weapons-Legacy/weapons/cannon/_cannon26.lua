dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel26",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel26"
NodeEffects = {}
MinFireSpeed = 8775.0
MaxFireSpeed = 8775.1
EnergyFireCost = 13510.526986127597
MetalFireCost = 225.17544976879324
ReloadTime = 20.71875
Projectile = "_cannon26"

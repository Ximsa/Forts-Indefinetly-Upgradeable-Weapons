dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel24",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel24"
NodeEffects = {}
MinFireSpeed = 8553.0
MaxFireSpeed = 8553.1
EnergyFireCost = 12511.79136927305
MetalFireCost = 208.5298561545508
ReloadTime = 21.125
Projectile = "_cannon24"

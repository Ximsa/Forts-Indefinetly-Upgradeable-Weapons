dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel4",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel4"
NodeEffects = {}
MinFireSpeed = 6333.0
MaxFireSpeed = 6333.1
EnergyFireCost = 4056.969451904297
MetalFireCost = 67.61615753173828
ReloadTime = 25.1875
Projectile = "_cannon4"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel18",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel18"
NodeEffects = {}
MinFireSpeed = 7887.0
MaxFireSpeed = 7887.1
EnergyFireCost = 9694.852353281283
MetalFireCost = 161.58087255468803
ReloadTime = 22.34375
Projectile = "_cannon18"

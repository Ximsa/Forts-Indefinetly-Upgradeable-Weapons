dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel10",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel10"
NodeEffects = {}
MinFireSpeed = 6999.0
MaxFireSpeed = 6999.1
EnergyFireCost = 6324.275193487649
MetalFireCost = 105.40458655812746
ReloadTime = 23.96875
Projectile = "_cannon10"

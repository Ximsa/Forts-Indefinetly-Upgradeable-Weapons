dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel36",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel36"
NodeEffects = {}
MinFireSpeed = 9885.0
MaxFireSpeed = 9885.1
EnergyFireCost = 18996.306315924212
MetalFireCost = 316.6051052654035
ReloadTime = 18.6875
Projectile = "_cannon36"

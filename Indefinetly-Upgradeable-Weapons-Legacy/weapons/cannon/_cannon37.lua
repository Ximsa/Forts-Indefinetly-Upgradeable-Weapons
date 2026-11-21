dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel37",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel37"
NodeEffects = {}
MinFireSpeed = 9996.0
MaxFireSpeed = 9996.1
EnergyFireCost = 19593.12360211053
MetalFireCost = 326.55206003517543
ReloadTime = 18.484375
Projectile = "_cannon37"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel64",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel64"
NodeEffects = {}
MinFireSpeed = 12993.0
MaxFireSpeed = 12993.1
EnergyFireCost = 39759.81090160758
MetalFireCost = 662.6635150267929
ReloadTime = 13.0
Projectile = "_cannon64"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel3",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel3"
NodeEffects = {}
MinFireSpeed = 6222.0
MaxFireSpeed = 6222.1
EnergyFireCost = 3699.169921875
MetalFireCost = 61.65283203125
ReloadTime = 25.390625
Projectile = "_cannon3"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel28",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel28"
NodeEffects = {}
MinFireSpeed = 8997.0
MaxFireSpeed = 8997.1
EnergyFireCost = 14540.716922946558
MetalFireCost = 242.34528204910924
ReloadTime = 20.3125
Projectile = "_cannon28"

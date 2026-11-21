dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel12",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel12"
NodeEffects = {}
MinFireSpeed = 7221.0
MaxFireSpeed = 7221.1
EnergyFireCost = 7128.140305782547
MetalFireCost = 118.80233842970911
ReloadTime = 23.5625
Projectile = "_cannon12"

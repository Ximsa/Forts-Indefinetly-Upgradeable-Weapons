dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel11",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel11"
NodeEffects = {}
MinFireSpeed = 7110.0
MaxFireSpeed = 7110.1
EnergyFireCost = 6723.091993385893
MetalFireCost = 112.0515332230982
ReloadTime = 23.765625
Projectile = "_cannon11"

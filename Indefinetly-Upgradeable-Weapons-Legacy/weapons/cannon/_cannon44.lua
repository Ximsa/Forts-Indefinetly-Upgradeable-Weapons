dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel44",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel44"
NodeEffects = {}
MinFireSpeed = 10773.0
MaxFireSpeed = 10773.1
EnergyFireCost = 24040.27315459016
MetalFireCost = 400.67121924316916
ReloadTime = 17.0625
Projectile = "_cannon44"

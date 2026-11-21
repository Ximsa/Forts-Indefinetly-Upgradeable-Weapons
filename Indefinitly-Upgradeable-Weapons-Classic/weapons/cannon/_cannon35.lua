dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel35",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel35"
NodeEffects = {}
MinFireSpeed = 9774.0
MaxFireSpeed = 9774.1
EnergyFireCost = 18408.67083414076
MetalFireCost = 306.81118056901266
ReloadTime = 18.890625
Projectile = "_cannon35"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel45",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel45"
NodeEffects = {}
MinFireSpeed = 10884.0
MaxFireSpeed = 10884.1
EnergyFireCost = 24715.90242263063
MetalFireCost = 411.9317070438437
ReloadTime = 16.859375
Projectile = "_cannon45"

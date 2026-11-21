dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel16",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel16"
NodeEffects = {}
MinFireSpeed = 7665.0
MaxFireSpeed = 7665.1
EnergyFireCost = 8812.61899148879
MetalFireCost = 146.8769831914798
ReloadTime = 22.75
Projectile = "_cannon16"

dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel21",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel21"
NodeEffects = {}
MinFireSpeed = 8220.0
MaxFireSpeed = 8220.1
EnergyFireCost = 11070.572004394046
MetalFireCost = 184.50953340656739
ReloadTime = 21.734375
Projectile = "_cannon21"

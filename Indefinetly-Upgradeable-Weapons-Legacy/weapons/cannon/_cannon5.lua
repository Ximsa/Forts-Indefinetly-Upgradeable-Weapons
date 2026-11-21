dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel5",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel5"
NodeEffects = {}
MinFireSpeed = 6444.0
MaxFireSpeed = 6444.1
EnergyFireCost = 4420.3595995903015
MetalFireCost = 73.67265999317169
ReloadTime = 24.984375
Projectile = "_cannon5"

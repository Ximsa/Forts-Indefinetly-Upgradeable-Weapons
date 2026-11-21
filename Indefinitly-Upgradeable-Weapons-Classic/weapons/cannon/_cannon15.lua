dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel15",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel15"
NodeEffects = {}
MinFireSpeed = 7554.0
MaxFireSpeed = 7554.1
EnergyFireCost = 8381.655622388962
MetalFireCost = 139.69426037314935
ReloadTime = 22.953125
Projectile = "_cannon15"

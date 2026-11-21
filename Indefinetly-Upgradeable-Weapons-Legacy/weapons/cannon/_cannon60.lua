dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel60",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel60"
NodeEffects = {}
MinFireSpeed = 12549.0
MaxFireSpeed = 12549.1
EnergyFireCost = 36214.389289754574
MetalFireCost = 603.5731548292426
ReloadTime = 13.8125
Projectile = "_cannon60"

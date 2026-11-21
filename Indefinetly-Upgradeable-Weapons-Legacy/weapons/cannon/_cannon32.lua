dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel32",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel32"
NodeEffects = {}
MinFireSpeed = 9441.0
MaxFireSpeed = 9441.1
EnergyFireCost = 16699.453462521604
MetalFireCost = 278.3242243753601
ReloadTime = 19.5
Projectile = "_cannon32"

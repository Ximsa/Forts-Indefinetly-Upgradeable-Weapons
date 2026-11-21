local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel24",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel24"
NodeEffects = {}
EnergyFireCost = 16682.38849236407
MetalFireCost = 488.48266584350057
ReloadTime = 24.375
Projectile = "__cannon24"

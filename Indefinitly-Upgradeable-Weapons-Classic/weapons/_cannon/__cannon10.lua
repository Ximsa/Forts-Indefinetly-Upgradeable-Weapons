local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel10",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel10"
NodeEffects = {}
EnergyFireCost = 8432.366924650198
MetalFireCost = 268.29627940789385
ReloadTime = 27.65625
Projectile = "__cannon10"

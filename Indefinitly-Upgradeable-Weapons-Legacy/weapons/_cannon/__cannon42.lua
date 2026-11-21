local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel42",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel42"
NodeEffects = {}
EnergyFireCost = 30293.38346073414
MetalFireCost = 851.7490856074313
ReloadTime = 20.15625
Projectile = "__cannon42"

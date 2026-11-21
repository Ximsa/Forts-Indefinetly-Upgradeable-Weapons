local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel23",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel23"
NodeEffects = {}
EnergyFireCost = 16031.89020786616
MetalFireCost = 471.12139406129285
ReloadTime = 24.609375
Projectile = "__cannon23"

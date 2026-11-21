local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel20",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel20"
NodeEffects = {}
EnergyFireCost = 14139.827862178849
MetalFireCost = 420.62378415950315
ReloadTime = 25.3125
Projectile = "__cannon20"

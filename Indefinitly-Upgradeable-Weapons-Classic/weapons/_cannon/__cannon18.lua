local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel18",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel18"
NodeEffects = {}
EnergyFireCost = 12926.469804375045
MetalFireCost = 388.24024140055025
ReloadTime = 25.78125
Projectile = "__cannon18"

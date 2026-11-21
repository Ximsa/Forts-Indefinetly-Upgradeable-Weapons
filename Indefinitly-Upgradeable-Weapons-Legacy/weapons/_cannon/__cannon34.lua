local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel34",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel34"
NodeEffects = {}
EnergyFireCost = 23773.434530974544
MetalFireCost = 677.736935117226
ReloadTime = 22.03125
Projectile = "__cannon34"

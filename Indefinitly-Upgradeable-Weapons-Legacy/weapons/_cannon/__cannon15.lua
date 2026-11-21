local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel15",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel15"
NodeEffects = {}
EnergyFireCost = 11175.540829851949
MetalFireCost = 341.50936674267035
ReloadTime = 26.484375
Projectile = "__cannon15"

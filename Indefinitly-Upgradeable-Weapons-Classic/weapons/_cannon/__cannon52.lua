local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel52",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel52"
NodeEffects = {}
EnergyFireCost = 39667.086543883095
MetalFireCost = 1101.9256205968798
ReloadTime = 17.8125
Projectile = "__cannon52"

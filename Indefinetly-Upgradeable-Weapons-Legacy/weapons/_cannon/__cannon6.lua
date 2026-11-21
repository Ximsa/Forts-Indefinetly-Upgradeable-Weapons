local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel6",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel6"
NodeEffects = {}
EnergyFireCost = 6385.9036244452
MetalFireCost = 213.67783321999013
ReloadTime = 28.59375
Projectile = "__cannon6"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel32",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel32"
NodeEffects = {}
EnergyFireCost = 22265.937950028812
MetalFireCost = 637.5030736663095
ReloadTime = 22.5
Projectile = "__cannon32"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel3",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel3"
NodeEffects = {}
EnergyFireCost = 4932.2265625
MetalFireCost = 174.88037109375
ReloadTime = 29.296875
Projectile = "__cannon3"

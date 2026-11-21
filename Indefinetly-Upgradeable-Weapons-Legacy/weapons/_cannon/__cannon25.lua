local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel25",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel25"
NodeEffects = {}
EnergyFireCost = 17343.050812557256
MetalFireCost = 506.1152074973053
ReloadTime = 24.140625
Projectile = "__cannon25"

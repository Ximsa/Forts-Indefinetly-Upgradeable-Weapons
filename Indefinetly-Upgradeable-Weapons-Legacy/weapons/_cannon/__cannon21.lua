local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel21",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel21"
NodeEffects = {}
EnergyFireCost = 14760.762672525394
MetalFireCost = 437.1960307869954
ReloadTime = 25.078125
Projectile = "__cannon21"

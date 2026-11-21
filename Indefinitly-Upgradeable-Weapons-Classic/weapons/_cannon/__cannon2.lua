local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel2",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel2"
NodeEffects = {}
EnergyFireCost = 4462.5
MetalFireCost = 162.34375
ReloadTime = 29.53125
Projectile = "__cannon2"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel8",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel8"
NodeEffects = {}
EnergyFireCost = 7393.272171211174
MetalFireCost = 240.5636829478658
ReloadTime = 28.125
Projectile = "__cannon8"

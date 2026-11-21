local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel13",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel13"
NodeEffects = {}
EnergyFireCost = 10052.689997413865
MetalFireCost = 311.54138844449176
ReloadTime = 26.953125
Projectile = "__cannon13"

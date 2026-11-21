local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel4",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel4"
NodeEffects = {}
EnergyFireCost = 5409.2926025390625
MetalFireCost = 187.61287689208984
ReloadTime = 29.0625
Projectile = "__cannon4"

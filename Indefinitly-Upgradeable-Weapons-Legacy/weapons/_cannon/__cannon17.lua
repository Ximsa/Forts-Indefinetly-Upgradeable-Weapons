local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel17",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel17"
NodeEffects = {}
EnergyFireCost = 12333.754884307737
MetalFireCost = 372.42116076361873
ReloadTime = 26.015625
Projectile = "__cannon17"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel9",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel9"
NodeEffects = {}
EnergyFireCost = 7908.792048886349
MetalFireCost = 254.3224904939262
ReloadTime = 27.890625
Projectile = "__cannon9"

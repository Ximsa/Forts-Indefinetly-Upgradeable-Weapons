local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel7",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel7"
NodeEffects = {}
EnergyFireCost = 6885.683368577156
MetalFireCost = 227.01654936405248
ReloadTime = 28.359375
Projectile = "__cannon7"

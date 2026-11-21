local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel51",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel51"
NodeEffects = {}
EnergyFireCost = 38662.97752013105
MetalFireCost = 1075.1267648953892
ReloadTime = 18.046875
Projectile = "__cannon51"

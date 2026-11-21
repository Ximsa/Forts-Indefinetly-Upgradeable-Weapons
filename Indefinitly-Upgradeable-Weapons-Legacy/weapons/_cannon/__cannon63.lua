local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel63",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel63"
NodeEffects = {}
EnergyFireCost = 51803.64918364894
MetalFireCost = 1425.8406369960355
ReloadTime = 15.234375
Projectile = "__cannon63"

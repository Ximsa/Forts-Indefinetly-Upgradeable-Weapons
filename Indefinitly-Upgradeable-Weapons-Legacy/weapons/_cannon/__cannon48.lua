local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel48",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel48"
NodeEffects = {}
EnergyFireCost = 35742.390456212044
MetalFireCost = 997.1786642029564
ReloadTime = 18.75
Projectile = "__cannon48"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel12",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel12"
NodeEffects = {}
EnergyFireCost = 9504.187074376729
MetalFireCost = 296.90229016073033
ReloadTime = 27.1875
Projectile = "__cannon12"

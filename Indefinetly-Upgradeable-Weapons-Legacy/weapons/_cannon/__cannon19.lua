local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel19",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel19"
NodeEffects = {}
EnergyFireCost = 13528.445895068406
MetalFireCost = 404.30649517243387
ReloadTime = 25.546875
Projectile = "__cannon19"

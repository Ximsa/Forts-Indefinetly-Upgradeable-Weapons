local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel31",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel31"
NodeEffects = {}
EnergyFireCost = 21529.538904643752
MetalFireCost = 617.8491802252894
ReloadTime = 22.734375
Projectile = "__cannon31"

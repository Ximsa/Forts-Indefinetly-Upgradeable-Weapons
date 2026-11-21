local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel47",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel47"
NodeEffects = {}
EnergyFireCost = 34798.66137227032
MetalFireCost = 971.9913001382955
ReloadTime = 18.984375
Projectile = "__cannon47"

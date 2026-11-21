local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel11",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel11"
NodeEffects = {}
EnergyFireCost = 8964.122657847856
MetalFireCost = 282.48840877364216
ReloadTime = 27.421875
Projectile = "__cannon11"

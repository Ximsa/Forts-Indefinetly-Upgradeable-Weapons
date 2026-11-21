local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel14",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel14"
NodeEffects = {}
EnergyFireCost = 10609.763278623457
MetalFireCost = 326.40922263893697
ReloadTime = 26.71875
Projectile = "__cannon14"

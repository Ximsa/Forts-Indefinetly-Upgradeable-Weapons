local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel29",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel29"
NodeEffects = {}
EnergyFireCost = 20090.554166490132
MetalFireCost = 579.4438443083516
ReloadTime = 23.203125
Projectile = "__cannon29"

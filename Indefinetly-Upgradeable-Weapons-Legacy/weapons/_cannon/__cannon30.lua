local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel30",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel30"
NodeEffects = {}
EnergyFireCost = 20804.46907534154
MetalFireCost = 598.4976543756695
ReloadTime = 22.96875
Projectile = "__cannon30"

local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel5",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel5"
NodeEffects = {}
EnergyFireCost = 5893.812799453735
MetalFireCost = 200.54432809352875
ReloadTime = 28.828125
Projectile = "__cannon5"

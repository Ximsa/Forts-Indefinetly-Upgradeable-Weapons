local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel38",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel38"
NodeEffects = {}
EnergyFireCost = 26932.354877858015
MetalFireCost = 762.0459578887779
ReloadTime = 21.09375
Projectile = "__cannon38"

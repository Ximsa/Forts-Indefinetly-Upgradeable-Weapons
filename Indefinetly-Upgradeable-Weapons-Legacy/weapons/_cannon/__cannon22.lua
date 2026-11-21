local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel22",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel22"
NodeEffects = {}
EnergyFireCost = 15391.399589283603
MetalFireCost = 454.0272187680422
ReloadTime = 24.84375
Projectile = "__cannon22"

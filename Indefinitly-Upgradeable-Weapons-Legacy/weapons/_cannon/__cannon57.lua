local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel57",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel57"
NodeEffects = {}
EnergyFireCost = 44927.93040678949
MetalFireCost = 1242.3332777487735
ReloadTime = 16.640625
Projectile = "__cannon57"

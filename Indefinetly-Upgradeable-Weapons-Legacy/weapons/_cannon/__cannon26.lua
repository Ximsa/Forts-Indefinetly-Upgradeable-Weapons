local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel26",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel26"
NodeEffects = {}
EnergyFireCost = 18014.035981503464
MetalFireCost = 524.0232576144507
ReloadTime = 23.90625
Projectile = "__cannon26"

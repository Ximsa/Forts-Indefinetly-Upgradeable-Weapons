local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel16",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel16"
NodeEffects = {}
EnergyFireCost = 11750.158655318386
MetalFireCost = 356.84545059802457
ReloadTime = 26.25
Projectile = "__cannon16"

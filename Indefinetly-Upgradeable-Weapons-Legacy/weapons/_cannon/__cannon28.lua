local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel28",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel28"
NodeEffects = {}
EnergyFireCost = 19387.622563928744
MetalFireCost = 560.6831697805308
ReloadTime = 23.4375
Projectile = "__cannon28"

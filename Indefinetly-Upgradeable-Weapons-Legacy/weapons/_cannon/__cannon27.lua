local tmp = path
path = path .. "/../1562567436"
dofile( path .. "/weapons/_cannon.lua")
path = tmp
Sprites={{Name = "__cannon-barrel27",States={Normal={Frames={{texture= "weapons/cannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="__cannon-barrel27"
NodeEffects = {}
EnergyFireCost = 18695.505293714457
MetalFireCost = 542.2111210146765
ReloadTime = 23.671875
Projectile = "__cannon27"

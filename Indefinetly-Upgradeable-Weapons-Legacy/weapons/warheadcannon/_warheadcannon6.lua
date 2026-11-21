local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel6"
NodeEffects = {}
MinFireSpeed = 210.0
MaxFireSpeed = 210.1
EnergyFireCost = 4789.4277183339
MetalFireCost = 119.7356929583475
ReloadTime = 24.78125
Projectile = "_missile26"

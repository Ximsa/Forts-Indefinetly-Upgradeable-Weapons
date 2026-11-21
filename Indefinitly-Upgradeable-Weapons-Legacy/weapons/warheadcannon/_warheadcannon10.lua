local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel10"
NodeEffects = {}
MinFireSpeed = 290.0
MaxFireSpeed = 290.1
EnergyFireCost = 6324.275193487649
MetalFireCost = 158.1068798371912
ReloadTime = 23.96875
Projectile = "_missile210"

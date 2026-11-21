local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel38"
NodeEffects = {}
MinFireSpeed = 850.0
MaxFireSpeed = 850.1
EnergyFireCost = 20199.266158393504
MetalFireCost = 504.98165395983756
ReloadTime = 18.28125
Projectile = "_missile238"

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel34"
NodeEffects = {}
MinFireSpeed = 770.0
MaxFireSpeed = 770.1
EnergyFireCost = 17830.0758982309
MetalFireCost = 445.75189745577256
ReloadTime = 19.09375
Projectile = "_missile234"

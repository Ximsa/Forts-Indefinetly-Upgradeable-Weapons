local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel40"
NodeEffects = {}
MinFireSpeed = 890.0
MaxFireSpeed = 890.1
EnergyFireCost = 21440.112187307754
MetalFireCost = 536.0028046826937
ReloadTime = 17.875
Projectile = "_missile240"

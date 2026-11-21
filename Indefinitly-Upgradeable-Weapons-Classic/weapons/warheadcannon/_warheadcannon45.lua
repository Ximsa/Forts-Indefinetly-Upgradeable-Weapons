local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel45"
NodeEffects = {}
MinFireSpeed = 990.0
MaxFireSpeed = 990.1
EnergyFireCost = 24715.90242263063
MetalFireCost = 617.8975605657655
ReloadTime = 16.859375
Projectile = "_missile245"

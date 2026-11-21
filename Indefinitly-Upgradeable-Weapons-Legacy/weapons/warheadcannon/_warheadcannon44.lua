local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel44"
NodeEffects = {}
MinFireSpeed = 970.0
MaxFireSpeed = 970.1
EnergyFireCost = 24040.27315459016
MetalFireCost = 601.0068288647537
ReloadTime = 17.0625
Projectile = "_missile244"

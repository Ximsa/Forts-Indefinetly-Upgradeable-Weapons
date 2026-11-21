local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel12"
NodeEffects = {}
MinFireSpeed = 330.0
MaxFireSpeed = 330.1
EnergyFireCost = 7128.140305782547
MetalFireCost = 178.20350764456367
ReloadTime = 23.5625
Projectile = "_missile212"

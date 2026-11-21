local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel3"
NodeEffects = {}
MinFireSpeed = 150.0
MaxFireSpeed = 150.1
EnergyFireCost = 3699.169921875
MetalFireCost = 92.479248046875
ReloadTime = 25.390625
Projectile = "_missile23"

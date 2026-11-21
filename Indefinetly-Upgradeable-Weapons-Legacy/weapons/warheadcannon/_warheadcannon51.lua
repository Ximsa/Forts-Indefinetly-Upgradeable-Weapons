local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel51"
NodeEffects = {}
MinFireSpeed = 1110.0
MaxFireSpeed = 1110.1
EnergyFireCost = 28997.23314009828
MetalFireCost = 724.9308285024568
ReloadTime = 15.640625
Projectile = "_missile251"

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel61"
NodeEffects = {}
MinFireSpeed = 1310.0
MaxFireSpeed = 1310.1
EnergyFireCost = 37080.23912240699
MetalFireCost = 927.0059780601744
ReloadTime = 13.609375
Projectile = "_missile261"

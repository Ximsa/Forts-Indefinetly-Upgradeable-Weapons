local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel36"
NodeEffects = {}
MinFireSpeed = 810.0
MaxFireSpeed = 810.1
EnergyFireCost = 18996.306315924212
MetalFireCost = 474.90765789810524
ReloadTime = 18.6875
Projectile = "_missile236"

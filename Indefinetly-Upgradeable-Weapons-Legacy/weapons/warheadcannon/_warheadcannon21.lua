local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel21"
NodeEffects = {}
MinFireSpeed = 510.0
MaxFireSpeed = 510.1
EnergyFireCost = 11070.572004394046
MetalFireCost = 276.7643001098511
ReloadTime = 21.734375
Projectile = "_missile221"

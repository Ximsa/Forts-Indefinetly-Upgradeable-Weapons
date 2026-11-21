local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel55"
NodeEffects = {}
MinFireSpeed = 1190.0
MaxFireSpeed = 1190.1
EnergyFireCost = 32080.899931279833
MetalFireCost = 802.0224982819957
ReloadTime = 14.828125
Projectile = "_missile255"

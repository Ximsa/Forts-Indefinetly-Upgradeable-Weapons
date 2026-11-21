local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel31"
NodeEffects = {}
MinFireSpeed = 710.0
MaxFireSpeed = 710.1
EnergyFireCost = 16147.154178482811
MetalFireCost = 403.67885446207026
ReloadTime = 19.703125
Projectile = "_missile231"

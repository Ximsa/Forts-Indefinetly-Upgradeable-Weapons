local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel48"
NodeEffects = {}
MinFireSpeed = 1050.0
MaxFireSpeed = 1050.1
EnergyFireCost = 26806.79284215903
MetalFireCost = 670.1698210539756
ReloadTime = 16.25
Projectile = "_missile248"

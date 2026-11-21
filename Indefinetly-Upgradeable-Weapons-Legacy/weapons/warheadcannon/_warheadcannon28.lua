local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel28"
NodeEffects = {}
MinFireSpeed = 650.0
MaxFireSpeed = 650.1
EnergyFireCost = 14540.716922946558
MetalFireCost = 363.5179230736639
ReloadTime = 20.3125
Projectile = "_missile228"

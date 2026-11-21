local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel5"
NodeEffects = {}
MinFireSpeed = 190.0
MaxFireSpeed = 190.1
EnergyFireCost = 4420.3595995903015
MetalFireCost = 110.50898998975754
ReloadTime = 24.984375
Projectile = "_missile25"

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel20"
NodeEffects = {}
MinFireSpeed = 490.0
MaxFireSpeed = 490.1
EnergyFireCost = 10604.870896634136
MetalFireCost = 265.1217724158534
ReloadTime = 21.9375
Projectile = "_missile220"

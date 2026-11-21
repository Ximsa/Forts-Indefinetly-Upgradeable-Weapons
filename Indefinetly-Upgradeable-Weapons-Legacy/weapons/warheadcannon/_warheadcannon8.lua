local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel8"
NodeEffects = {}
MinFireSpeed = 250.0
MaxFireSpeed = 250.1
EnergyFireCost = 5544.954128408381
MetalFireCost = 138.62385321020952
ReloadTime = 24.375
Projectile = "_missile28"

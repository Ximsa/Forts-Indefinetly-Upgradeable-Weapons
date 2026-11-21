local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel9"
NodeEffects = {}
MinFireSpeed = 270.0
MaxFireSpeed = 270.1
EnergyFireCost = 5931.594036664762
MetalFireCost = 148.28985091661903
ReloadTime = 24.171875
Projectile = "_missile29"

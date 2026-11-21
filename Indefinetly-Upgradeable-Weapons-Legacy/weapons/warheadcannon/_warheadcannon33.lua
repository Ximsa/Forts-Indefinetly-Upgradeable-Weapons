local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel33"
NodeEffects = {}
MinFireSpeed = 750.0
MaxFireSpeed = 750.1
EnergyFireCost = 17260.382422873503
MetalFireCost = 431.5095605718376
ReloadTime = 19.296875
Projectile = "_missile233"

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel37"
NodeEffects = {}
MinFireSpeed = 830.0
MaxFireSpeed = 830.1
EnergyFireCost = 19593.12360211053
MetalFireCost = 489.8280900527631
ReloadTime = 18.484375
Projectile = "_missile237"

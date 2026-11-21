local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel42"
NodeEffects = {}
MinFireSpeed = 930.0
MaxFireSpeed = 930.1
EnergyFireCost = 22720.037595550602
MetalFireCost = 568.0009398887648
ReloadTime = 17.46875
Projectile = "_missile242"

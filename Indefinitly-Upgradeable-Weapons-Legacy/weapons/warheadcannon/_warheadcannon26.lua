local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel26"
NodeEffects = {}
MinFireSpeed = 610.0
MaxFireSpeed = 610.1
EnergyFireCost = 13510.526986127597
MetalFireCost = 337.7631746531899
ReloadTime = 20.71875
Projectile = "_missile226"

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel36"
NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
EnergyFireCost = 9814.758263227512
MetalFireCost = 253.28408421232285
ReloadTime = 3.953125
Projectile = "_cannon88he36"
FireStdDev =0.00017792051369183655
FireStdDevAuto =0.00017792051369183655

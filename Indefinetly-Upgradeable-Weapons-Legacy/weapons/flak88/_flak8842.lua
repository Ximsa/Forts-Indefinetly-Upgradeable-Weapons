local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel42"
NodeEffects = {}
MinFireSpeed = 24400.0
MaxFireSpeed = 24400.1
EnergyFireCost = 11738.686091034477
MetalFireCost = 302.93383460734134
ReloadTime = 3.6953125
Projectile = "_cannon88he42"
FireStdDev =0.00010043149160081785
FireStdDevAuto =0.00010043149160081785

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel8"
NodeEffects = {}
MinFireSpeed = 10800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 2864.89296634433
MetalFireCost = 73.93272171211174
ReloadTime = 5.15625
Projectile = "_cannon88he8"
FireStdDev =0.0025657905911535325
FireStdDevAuto =0.0025657905911535325

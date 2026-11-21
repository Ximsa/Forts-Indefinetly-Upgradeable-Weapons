local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel57"
NodeEffects = {}
MinFireSpeed = 30400.0
MaxFireSpeed = 30400.1
EnergyFireCost = 17409.57303263092
MetalFireCost = 449.2793040678948
ReloadTime = 3.05078125
Projectile = "_cannon88he57"
FireStdDev =2.4042500595521708e-05
FireStdDevAuto =2.4042500595521708e-05

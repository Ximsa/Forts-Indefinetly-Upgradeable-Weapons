local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel57"
NodeEffects = {}
MinFireSpeed = 22800.0
MaxFireSpeed = 22800.1
EnergyFireCost = 33695.94780509212
MetalFireCost = 842.3986951273026
ReloadTime = 14.421875
Projectile = "_hellfirecannon57"
FireStdDev =4.8085001191043417e-05
FireStdDevAuto =5.77020014292521e-05

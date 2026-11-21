local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel13"
NodeEffects = {}
MinFireSpeed = 9600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 7539.5174980604
MetalFireCost = 188.48793745151
ReloadTime = 23.359375
Projectile = "_hellfirecannon13"
FireStdDev =0.0031863081771035654
FireStdDevAuto =0.0038235698125242785

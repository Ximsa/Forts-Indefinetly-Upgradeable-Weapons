local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel11"
NodeEffects = {}
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
EnergyFireCost = 6723.091993385893
MetalFireCost = 168.0772998346473
ReloadTime = 23.765625
Projectile = "_hellfirecannon11"
FireStdDev =0.0038554328942953147
FireStdDevAuto =0.004626519473154378

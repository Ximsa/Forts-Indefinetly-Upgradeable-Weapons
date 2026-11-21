local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel41"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 22075.113940234438
MetalFireCost = 551.8778485058608
ReloadTime = 17.671875
Projectile = "_hellfirecannon41"
FireStdDev =0.0002209492815217993
FireStdDevAuto =0.00026513913782615913

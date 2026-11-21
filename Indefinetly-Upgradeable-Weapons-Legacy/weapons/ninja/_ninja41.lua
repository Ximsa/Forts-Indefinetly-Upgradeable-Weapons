local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base41"
NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 1103.7556970117216
MetalFireCost = 14.716742626822944
ReloadTime = 1.42734375
Projectile = "_star41"
FireStdDev =0.00013256956891307957
FireStdDevAuto =0.0005302782756523183

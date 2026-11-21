local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base10"
NodeEffects = {}
MinFireSpeed = 8800.0
MaxFireSpeed = 8800.1
EnergyFireCost = 316.2137596743824
MetalFireCost = 4.216183462325099
ReloadTime = 1.9359375
Projectile = "_star10"
FireStdDev =0.002544585710234907
FireStdDevAuto =0.010178342840939629

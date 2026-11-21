local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base48"
NodeEffects = {}
MinFireSpeed = 16400.0
MaxFireSpeed = 16400.1
EnergyFireCost = 1340.3396421079512
MetalFireCost = 17.871195228105996
ReloadTime = 1.3125
Projectile = "_star48"
FireStdDev =6.802915051809188e-05
FireStdDevAuto =0.00027211660207236753

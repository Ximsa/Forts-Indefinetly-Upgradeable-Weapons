local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base20"
NodeEffects = {}
MinFireSpeed = 10800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 530.2435448317068
MetalFireCost = 7.069913931089426
ReloadTime = 1.771875
Projectile = "_star20"
FireStdDev =0.0009810479449593467
FireStdDevAuto =0.003924191779837387

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base52"
NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 1487.5157453956156
MetalFireCost = 19.833543271941515
ReloadTime = 1.2468750000000002
Projectile = "_star52"
FireStdDev =4.6464825160912405e-05
FireStdDevAuto =0.00018585930064364962

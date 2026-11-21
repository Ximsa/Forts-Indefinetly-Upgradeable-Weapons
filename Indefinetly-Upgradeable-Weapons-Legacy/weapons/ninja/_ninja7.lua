local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base7"
NodeEffects = {}
MinFireSpeed = 8200.0
MaxFireSpeed = 8200.1
EnergyFireCost = 258.21312632164336
MetalFireCost = 3.4428416842885783
ReloadTime = 1.9851562500000002
Projectile = "_star7"
FireStdDev =0.0033868435803226624
FireStdDevAuto =0.01354737432129065

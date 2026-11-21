local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base28"
NodeEffects = {}
MinFireSpeed = 12400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 727.0358461473278
MetalFireCost = 9.693811281964368
ReloadTime = 1.640625
Projectile = "_star28"
FireStdDev =0.0004576661066631273
FireStdDevAuto =0.0018306644266525092

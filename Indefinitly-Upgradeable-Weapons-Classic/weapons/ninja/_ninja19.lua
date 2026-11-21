local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base19"
NodeEffects = {}
MinFireSpeed = 10600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 507.31672106506517
MetalFireCost = 6.764222947534203
ReloadTime = 1.78828125
Projectile = "_star19"
FireStdDev =0.0010791527394552816
FireStdDevAuto =0.0043166109578211265

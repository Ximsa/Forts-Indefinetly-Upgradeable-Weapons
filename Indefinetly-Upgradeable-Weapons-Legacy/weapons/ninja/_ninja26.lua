local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base26"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 675.5263493063798
MetalFireCost = 9.00701799075173
ReloadTime = 1.6734375000000001
Projectile = "_star26"
FireStdDev =0.0005537759890623841
FireStdDevAuto =0.0022151039562495365

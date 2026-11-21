local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base53"
NodeEffects = {}
MinFireSpeed = 17400.0
MaxFireSpeed = 17400.1
EnergyFireCost = 1525.7581789174221
MetalFireCost = 20.343442385565602
ReloadTime = 1.23046875
Projectile = "_star53"
FireStdDev =4.2240750146284e-05
FireStdDevAuto =0.000168963000585136

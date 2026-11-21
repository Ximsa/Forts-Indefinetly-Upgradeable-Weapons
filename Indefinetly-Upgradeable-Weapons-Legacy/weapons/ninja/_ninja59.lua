local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base59"
NodeEffects = {}
MinFireSpeed = 18600.0
MaxFireSpeed = 18600.1
EnergyFireCost = 1768.0930111879168
MetalFireCost = 23.574573482505528
ReloadTime = 1.13203125
Projectile = "_star59"
FireStdDev =2.384380224349259e-05
FireStdDevAuto =9.537520897397036e-05

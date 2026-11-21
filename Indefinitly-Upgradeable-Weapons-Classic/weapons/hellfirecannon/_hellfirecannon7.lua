local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel7"
NodeEffects = {}
MinFireSpeed = 7800.0
MaxFireSpeed = 7800.1
EnergyFireCost = 5164.262526432867
MetalFireCost = 129.10656316082168
ReloadTime = 24.578125
Projectile = "_hellfirecannon7"
FireStdDev =0.005644739300537772
FireStdDevAuto =0.0067736871606453265

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel23"
NodeEffects = {}
MinFireSpeed = 12600.0
MaxFireSpeed = 12600.1
EnergyFireCost = 12023.917655899619
MetalFireCost = 300.59794139749044
ReloadTime = 21.328125
Projectile = "_hellfirecannon23"
FireStdDev =0.0012284597357367227
FireStdDevAuto =0.0014741516828840672

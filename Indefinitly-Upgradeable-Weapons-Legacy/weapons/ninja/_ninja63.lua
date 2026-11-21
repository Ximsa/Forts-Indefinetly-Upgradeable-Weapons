local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base63"
NodeEffects = {}
MinFireSpeed = 19400.0
MaxFireSpeed = 19400.1
EnergyFireCost = 1942.6368443868344
MetalFireCost = 25.901824591824422
ReloadTime = 1.06640625
Projectile = "_star63"
FireStdDev =1.6285637759369296e-05
FireStdDevAuto =6.514255103747718e-05

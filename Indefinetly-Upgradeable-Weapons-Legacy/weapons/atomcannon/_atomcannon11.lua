local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel11"
NodeEffects = {}
MinFireSpeed = 523.01766015
MaxFireSpeed = 8250.1
EnergyFireCost = 56025.76661154911
MetalFireCost = 1120.515332230982
ReloadTime = 114.2578125
Projectile = "_atomcannon11"
FireStdDev =0.0038554328942953147
FireStdDevAuto =0.004240976183724847

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel56"
NodeEffects = {}
MinFireSpeed = 4.564879083255686
MaxFireSpeed = 26250.1
EnergyFireCost = 274018.0332725506
MetalFireCost = 5480.360665451014
ReloadTime = 70.3125
Projectile = "_atomcannon56"
FireStdDev =5.289350131014776e-05
FireStdDevAuto =5.818285144116254e-05

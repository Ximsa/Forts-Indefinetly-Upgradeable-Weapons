local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel57"
NodeEffects = {}
MinFireSpeed = 4.108391174930118
MaxFireSpeed = 26650.1
EnergyFireCost = 280799.5650424342
MetalFireCost = 5615.9913008486865
ReloadTime = 69.3359375
Projectile = "_atomcannon57"
FireStdDev =4.8085001191043417e-05
FireStdDevAuto =5.289350131014776e-05

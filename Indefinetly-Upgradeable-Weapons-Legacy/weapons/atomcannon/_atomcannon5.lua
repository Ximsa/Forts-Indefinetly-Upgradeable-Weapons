local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel5"
NodeEffects = {}
MinFireSpeed = 984.15
MaxFireSpeed = 5850.1
EnergyFireCost = 36836.329996585846
MetalFireCost = 736.7265999317169
ReloadTime = 120.1171875
Projectile = "_atomcannon5"
FireStdDev =0.006830134553650705
FireStdDevAuto =0.007513148009015776

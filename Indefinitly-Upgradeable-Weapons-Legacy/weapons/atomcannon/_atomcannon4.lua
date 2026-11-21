local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel4"
NodeEffects = {}
MinFireSpeed = 1093.5
MaxFireSpeed = 5450.1
EnergyFireCost = 33808.07876586914
MetalFireCost = 676.1615753173828
ReloadTime = 121.09375
Projectile = "_atomcannon4"
FireStdDev =0.007513148009015776
FireStdDevAuto =0.008264462809917354

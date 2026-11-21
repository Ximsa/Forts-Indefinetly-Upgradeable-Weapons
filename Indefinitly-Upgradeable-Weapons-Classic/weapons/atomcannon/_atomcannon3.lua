local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel3"
NodeEffects = {}
MinFireSpeed = 1215.0
MaxFireSpeed = 5050.1
EnergyFireCost = 30826.416015625
MetalFireCost = 616.5283203125
ReloadTime = 122.0703125
Projectile = "_atomcannon3"
FireStdDev =0.008264462809917354
FireStdDevAuto =0.00909090909090909

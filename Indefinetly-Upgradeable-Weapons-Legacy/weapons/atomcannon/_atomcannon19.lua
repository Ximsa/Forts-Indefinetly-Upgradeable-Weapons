local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel19"
NodeEffects = {}
MinFireSpeed = 225.14195294549876
MaxFireSpeed = 11450.1
EnergyFireCost = 84552.78684417752
MetalFireCost = 1691.0557368835507
ReloadTime = 106.4453125
Projectile = "_atomcannon19"
FireStdDev =0.0017985878990921362
FireStdDevAuto =0.00197844668900135

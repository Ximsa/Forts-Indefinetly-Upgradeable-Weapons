local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel20"
NodeEffects = {}
MinFireSpeed = 202.6277576509489
MaxFireSpeed = 11850.1
EnergyFireCost = 88373.92413861779
MetalFireCost = 1767.478482772356
ReloadTime = 105.46875
Projectile = "_atomcannon20"
FireStdDev =0.0016350799082655782
FireStdDevAuto =0.0017985878990921362

local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel19"
NodeEffects = {}
MinFireSpeed = 11400.0
MaxFireSpeed = 11400.1
EnergyFireCost = 10146.334421301304
MetalFireCost = 253.65836053253258
ReloadTime = 22.140625
Projectile = "_hellfirecannon19"
FireStdDev =0.0017985878990921362
FireStdDevAuto =0.0021583054789105632

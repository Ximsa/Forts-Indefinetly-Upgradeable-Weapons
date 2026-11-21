local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel19",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel19"
MinFireSpeed = 6600.0
MaxFireSpeed = 7600.1
EnergyFireCost = 14000.0
MetalFireCost = 2800.0
ReloadTime = 34.0625
Projectile = "_bigcannon19"
FireStdDev =0.0017985878990921362
FireStdDevAuto =0.0008992939495460681

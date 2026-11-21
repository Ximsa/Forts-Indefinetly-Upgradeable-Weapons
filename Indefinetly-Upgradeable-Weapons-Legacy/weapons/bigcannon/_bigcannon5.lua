local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel5",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel5"
MinFireSpeed = 3800.0
MaxFireSpeed = 4800.1
EnergyFireCost = 7000.0
MetalFireCost = 1400.0
ReloadTime = 38.4375
Projectile = "_bigcannon5"
FireStdDev =0.006830134553650705
FireStdDevAuto =0.0034150672768253525

local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel20",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel20"
MinFireSpeed = 6800.0
MaxFireSpeed = 7800.1
EnergyFireCost = 14500.0
MetalFireCost = 2900.0
ReloadTime = 33.75
Projectile = "_bigcannon20"
FireStdDev =0.0016350799082655782
FireStdDevAuto =0.0008175399541327891
